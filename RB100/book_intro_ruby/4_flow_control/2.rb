=begin
Write a method that takes a string as an argument. The method should return a new, all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)


=end

def upperif (intake_string)
  if intake_string.length > 10
    intake_string = intake_string.upcase
  else 
    return intake_string
  end
end

puts upperif("testing longer now")




