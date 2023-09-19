class File
  
  attr_accessor :name, :byte_content

  def initialize(name)
    @name = name
  end

  alias_method :read,  :byte_content
  alias_method :write, :byte_content=

  def copy(target_file_name)
    target_file = self.class.new(target_file_name)
    target_file.write(read)

    target_file
  end

  def to_s
    "#{name}.#{self.class::FORMAT}"
  end
end

class MarkdownFile < File
  FORMAT = :md
end

class VectorGraphicsFile < File
  FORMAT = :svg
end

class MP3File < File
  FORMAT = :mp3
end

# Test

blog_post = MarkdownFile.new('Adventures_in_OOP_Land')
blog_post.write('Content will be added soon!'.bytes)

copy_of_blog_post = blog_post.copy('Same_Adventures_in_OOP_Land')

puts copy_of_blog_post.is_a? MarkdownFile     # true
puts copy_of_blog_post.read == blog_post.read # true

puts blog_post


=begin
The issue is that we have not properly defined the FORMAT constant in the right place. Ruby searches for CONSTANTs lexically in the code, starting with the innermost block (where the return value of the constant is called for, in this case line 19 via the to_s invocation from the puts call on line 45. FORMAT is not defined in the to_s method defintion block, so Ruby then searched in the block that contains it, ie the File class definition block. FORMAT is not defined there, so Ruby checks File superclasses and then main, none of which contain the constant's initialization. This lexical search does NOT go down into lower classes than the class it was called in, so it never "sees" the intended initialization on line 24. 

To fix this, we can prepend the FORMAT constant call on line 21 with a class focuser. This focuses the scope of the CONSTANT to the given class, which is returned when the calling object invokes the OBject#class method. 

=end