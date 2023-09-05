class MyCar
  attr_accessor :color, :model, :current_speed, :engine_state

  attr_reader :year

  def to_s
    "#{self.color} #{self.year} #{self.model}"
  end
  
  def self.gas_mileage(gas_gallons, miles_driven)
    miles_driven / gas_gallons
  end
  
  
  def initialize(y, c, m)
    @year = y
    self.color = c
    self.model = m
    self.current_speed = 0
    self.engine_state = 'on'
  end

  def speed_up
    self.current_speed = current_speed + 10
    self
  end

  def brake
    self.current_speed = [current_speed - 10, 0].max
    self
  end

  def turn_off
    self.engine_state = 'off'
    self.current_speed = 0
    self
  end

  def display_speed
    puts "Speed = #{current_speed}"
  end

  def spray_paint new_color
    self.color = new_color
  end

end

my_bmw = MyCar.new("2021", "Grey","BMW 330i")
puts "My car is a #{my_bmw.year} #{my_bmw.color} #{my_bmw.model}" 

my_bmw.display_speed
my_bmw.speed_up.display_speed
my_bmw.speed_up.display_speed
my_bmw.brake.display_speed
my_bmw.turn_off.display_speed


puts my_bmw.color
my_bmw.spray_paint("Black")
puts my_bmw.color

puts my_bmw.year
puts my_bmw

puts MyCar.gas_mileage(10,50)