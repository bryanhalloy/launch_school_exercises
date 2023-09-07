class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end


p oracle = Oracle.new 
# A new object of class Oracle will be instantiated. 


p oracle.predict_the_future
#Will return a string. 

