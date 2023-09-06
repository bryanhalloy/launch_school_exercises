class Pet
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Cat < Pet
  def initialize(name, age, color_fur)
    super(name, age)
    @color_fur = color_fur
  end
  
  def to_s
    "My cat #{@name} is #{@age} years old and has #{@color_fur} fur."
  end
end

pudding = Cat.new('Pudding', 7, 'black and white')
butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
puts pudding, butterscotch