class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end



# Pizza would create objects that would have the instance variable @name. As we can see in the defintiion, an instance varaible @name is initialized during initialization of the new Pizza object. Instance varaibles are denoted the with eh leading @ symbol.

# We can also invoke #instance_variables which returns the object's instance variables. 


hot_pizza = Pizza.new("cheese")
orange    = Fruit.new("apple")

p hot_pizza.instance_variables[0].class
p orange.instance_variables