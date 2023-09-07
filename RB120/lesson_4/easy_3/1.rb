class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end


# #Case 1
# hello = Hello.new
# hello.hi
# # Outptus "Hello"

# #Case 2
# hello = Hello.new
# hello.bye
# # Raises a nomethod error


# # case 3
# hello = Hello.new
# hello.greet
# # Raises an argument error. Expected 1 arguemnt, given 0

# #Case 4
# hello = Hello.new
# hello.greet("Goodbye")
# # Outputs Goodbye


Hello.hi
#no method error. There is no class method hi