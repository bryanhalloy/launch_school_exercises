class Dog
  def initialize(name)
    @name = name
  end
  
  def bark
    puts "Ruff"
  end

  def access_private_bark
    private_bark
  end

  def show_names(other)
    puts "#{name} and #{other.name}"
  end

  protected
  attr_accessor :name

  private
  def private_bark
    puts "Private Ruff"
  end
end

silva = Dog.new("Silva")
rover = Dog.new("Rover")

silva.bark
silva.access_private_bark
silva.show_names(rover)

