def my_method(&block)
  block.call(1)
end

# Using & on a Hash invokes Hash#to_proc
p my_method(&{ 1 => 'one' })
p my_method(&{ 2 => 'two' })


class MyClass
  def self.to_proc
    Proc.new { puts "From inside MyClass::to_proc" }
  end
end

# Using & on a custom class invokes MyClass#to_proc
my_method(&MyClass)
