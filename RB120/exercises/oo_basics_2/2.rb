class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename(input)
    self.name = input
  end

end

kitty = Cat.new('Sophie')
kitty.name
kitty.rename('Chloe')
p kitty.name