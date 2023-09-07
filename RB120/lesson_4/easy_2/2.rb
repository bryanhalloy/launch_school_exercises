class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end


trip = RoadTrip.new
# Instantiates a new object of class RoadTrip. 

p trip.predict_the_future
# Will return a string which references places. The #choices call is really self.choices, so it is the roadtrip object calling choices. The choices method definition first in its method lookup path is the one line 12 which returns a set of travel location strings. 