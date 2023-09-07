module Moveable
  attr_accessor :speed, :heading, :fuel_efficiency, :fuel_capacity, :bought

  def range
    self.fuel_capacity * self.fuel_efficiency
  end

  def set_bought
    @bought = true
  end

end


class WheeledVehicle
  include Moveable

  def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
    @tires = tire_array
    self.fuel_efficiency = km_traveled_per_liter
    self.fuel_capacity = liters_of_fuel_capacity
  end

  def tire_pressure(tire_index)
    @tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    @tires[tire_index] = pressure
  end
end

class Auto < WheeledVehicle
  def initialize
    # 4 tires are various tire pressures
    super([30,30,32,32], 50, 25.0)
  end
end

class Motorcycle < WheeledVehicle
  def initialize
    # 2 tires are various tire pressures
    super([20,20], 80, 8.0)
  end
end



class Catamaran
  attr_reader :propeller_count, :hull_count
  include Moveable

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    # ... code omitted ...
  end
end



#Tests
car = Auto.new
p car
p car.tire_pressure(0)
p car.inflate_tire(0,30)
p car.range
p car.bought
car.set_bought
p car.bought


# moto = Motorcycle.new
# p moto
# p moto.tire_pressure(0)
# p moto.inflate_tire(0,30)
# p moto.range


# cata = Catamaran.new