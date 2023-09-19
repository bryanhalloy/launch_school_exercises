class Animal
  def initialize(diet, superpower)
    @diet = diet
    @superpower = superpower
  end

  def move
    puts "I'm moving!"
  end

  def superpower
    puts "I can #{@superpower}!"
  end
end

class Fish < Animal
  def move
    puts "I'm swimming!"
  end
end

class Bird < Animal
end

class FlightlessBird < Bird
  def initialize(diet, superpower)
    super
  end

  def move
    puts "I'm running!"
  end
end

class SongBird < Bird
  def initialize(diet, superpower, song)
    super(diet, superpower)
    @song = song
  end

  def move
    puts "I'm flying!"
  end
end

# Examples

unicornfish = Fish.new(:herbivore, 'breathe underwater')
penguin = FlightlessBird.new(:carnivore, 'drink sea water')
robin = SongBird.new(:omnivore, 'sing', 'chirp chirrr chirp chirp chirrrr')


=begin
When we initialize a new `SongBird` object on `line 50`, we pass to its `initialize` constructor method three arguments. In the SongBird class definition on line 37, we execute a super command which passes its arguments to the next same-named method up in the inheritance chain. Thus, it calls the `initialize` method defined on `line 2`. When invoked with no explicit arguments, the super command on linke 37 defaults to pass all arguments passed to its initialize method, which in the case of the SongBird constructor is three. BUt these three are then passed to the `Animal` constructor method on linw 2, which only accepts 2 argumetns. Thus and argumentError exception is raised. 

We can fix this by explicity passing the two argments diet and superpower to super, as these are the correct arguments for the constructor defined in the Animal class definition. 

=end