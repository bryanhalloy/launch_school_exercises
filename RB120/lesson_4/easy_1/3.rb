module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end



During string interpolation, the calling object (in this case, Car.new) invokes the #Class method which returns its class, which is Car. The string interpolation then invokes to_s on the class name, and returns a string "Car" which is used in the return message value. 