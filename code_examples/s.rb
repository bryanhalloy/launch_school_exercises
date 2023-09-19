# What is a setter method, and example

class Dog
  attr_reader :name
  
  def name=(name)
    @name = name
  end
end


rover = Dog.new
rover.name("Rover")

puts rover.name
