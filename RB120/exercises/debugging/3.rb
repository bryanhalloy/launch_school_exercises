class Person
  attr_reader :name
  attr_accessor :location

  def initialize(name)
    @name = name
  end

  def teleport_to(latitude, longitude)
    @location = GeoLocation.new(latitude, longitude)
  end
end

class GeoLocation
  attr_reader :latitude, :longitude

  def initialize(latitude, longitude)
    @latitude = latitude
    @longitude = longitude
  end

  def to_s
    "(#{latitude}, #{longitude})"
  end

  def ==(other_location)
    latitude == other_location.latitude && longitude == other_location.longitude
  end

end

# Example

ada = Person.new('Ada')
ada.location = GeoLocation.new(53.477, -2.236)

grace = Person.new('Grace')
grace.location = GeoLocation.new(-33.89, 151.277)

ada.teleport_to(-33.89, 151.277)

puts ada.location                   # (-33.89, 151.277)
puts grace.location                 # (-33.89, 151.277)
puts ada.location == grace.location # expected: true
                                    # actual: false


=begin
Line 39 outputs false because we have not provide a suitiable method for comparison of GeoLcation class objects. Without such, Ruby invokes the first == method in the GeoLocation ancestry which is the == method defined in BasicObject class. This method assesses if the two values (both of which are instance variables for thier repsective objects) point to the same object, which by definiton they don't because they are instance variables. So the expression `ada.location == grace.location` will always evaluate to false until we provide a comparison method. 

We define a new == method which returns true if the respective values for both lat and lon of the two objects have the same value. 

=end