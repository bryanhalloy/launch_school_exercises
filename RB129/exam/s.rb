module Speak
  def speak(sound)
    puts sound
  end

  word = "noise noise"
end

class GoodDog
  include Speak

  def sayword
    puts word
  end

end

class HumanBeing
  include Speak
end

sparky = GoodDog.new
sparky.speak("Arf!")        # => Arf!
bob = HumanBeing.new
bob.speak("Hello!")         # => Hello!

sparky.sayword