class Cat
  @@cats_count = 10

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end


class Lion
  @@cats_count = 0
end




# Explain what the @@cats_count variable does and how it works. 
# @@cats_count is a class variable which functions to track the number of Cat objects instantiated. 

# The variable is set to zero, and is reassigned to value + 1 (increase in 1) when a new Cat object is instantiated. 

# We also have a class method that returns the value of the class variable when the method is invoked. 


# What code would you need to write to test your theory?



p Cat.cats_count
Cat.new('tabby')
Cat.new('calico')

p Cat.cats_count
