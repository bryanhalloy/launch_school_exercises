class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
    puts "Welcome #{@name}"
  end
end

word = 'Sophie'

kitty = Cat.new(word)


p kitty.name

word << "clies"

p kitty.name

