class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  @@number_of_dogs = 0
  
  def initialize(name, human_years_age)
    @name = name
    @age = human_years_age * DOG_YEARS
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end

  def speak
    "#{@name} says woof!"
  end

  def to_s
    "Dog's name is #{name}"
  end

end







sparky = GoodDog.new("Sparky",1)
fido = GoodDog.new("Fido",5)
puts GoodDog.total_number_of_dogs

puts sparky.age
puts fido.age
puts sparky
p sparky


# def self.what_am_i     # class method definition
#   "I'm a GoodDog class!"
# end
# puts GoodDog.what_am_i

# sparky = GoodDog.new
# sparky.speak("bark!")
# bob = HumanBeing.new
# bob.speak("Hi")


# A module is a collection of methods that can be mixed in with one or more classes, so the classes can use those methods. 
# We must 'include' them in the class definition. 


# module NameModifiers
#   def universitize(name)
#     puts name.to_s + ' University'
#   end
# end


# class Schools
# include NameModifiers
# end


# nu = Schools.new
# nu.universitize("Northwestern")



# module Degrees
#   class Stem
#   end

#   class Arts
#   end
# end

# my_degree = Degrees::Stem.new

