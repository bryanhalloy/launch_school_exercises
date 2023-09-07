class BeesWax
  attr_accessor :type
  
  def initialize(type)
    @type = type
  end


  def describe_type
    puts "I am a #{self.type} of Bees Wax"
  end
end

# We adding attr_accessor for the type instance variable, which gives us a quick way to define a getter and setter methods for the instance variable. 