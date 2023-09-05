

module Offroadable
  def start_offroad(num_wheels)
    puts "#{@model} is going off-roading with #{num_wheels} wheels engaged!"
  end
end



class Vehicle
  attr_accessor :color, :model, :current_speed
  attr_reader :year
  @@vehicle_count = 0

  def initialize(y, c, m)
    @year = y
    self.color = c
    self.model = m
    self.current_speed = 0
    @@vehicle_count += 1
  end

  def self.get_vehicle_count
    puts "Number of vehicles = #{@@vehicle_count}"
  end



  def self.gas_mileage(gas_gallons, miles_driven)
    miles_driven / gas_gallons
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
    self.current_speed = 0
    self
  end

  def display_speed
    puts "Speed = #{current_speed}"
    self
  end

  def spray_paint new_color
    self.color = new_color
    self
  end

  def age
    calculate_age
  end

  private
  def calculate_age
    Time.new.year - self.year.to_i
  end


end

class MyCar < Vehicle
  MPG = 40

  def to_s
    "My car is #{self.color} #{self.year} #{self.model}"
  end
end

class MyTruck < Vehicle
include Offroadable
  MPG = 21

  def to_s
    "My truck is #{self.color} #{self.year} #{self.model}"
  end
end


# bmw = MyCar.new('2021', 'Grey', 'BMW 330i')
# truck = MyTruck.new('1999','Tan', 'Ford F350')

# puts bmw.age
# puts truck.age




# puts bmw
# puts truck
# bmw.display_speed


# Vehicle.get_vehicle_count
# truck.start_offroad(4)

# puts "----------"
# puts "MyCar method lookup:"
# puts MyCar.ancestors

# puts "----------"
# puts "MyTruck method lookup:"
# puts MyTruck.ancestors

# puts "----------"
# puts "Vehicle method lookup:"
# puts Vehicle.ancestors


