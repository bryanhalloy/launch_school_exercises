class Vehicle
  attr_reader :make, :model
  @@wheels = nil

  def initialize(make, model)
    @make = make
    @model = model
  end

  def wheels
    self.class::WHEELS
  end

  def to_s
    "#{make} #{model}"
  end
end


class Car < Vehicle
  WHEELS = 4
end

class Motorcycle < Vehicle
  WHEELS = 2
end

class Truck < Vehicle
  attr_reader :payload
  WHEELS = 6

  def initialize(make, model, payload)
    super(make, model)
    @payload = payload
  end
end


mycar = Car.new('ford','focus')
mytruck = Truck.new('ford','F350', 1000)
mymoto = Motorcycle.new('hondo','racer')

puts mycar
puts mycar.wheels

puts mytruck
puts mytruck.wheels
puts mytruck.payload

puts mymoto
puts mymoto.wheels