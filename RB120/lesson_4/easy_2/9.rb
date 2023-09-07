class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    #rules of play
  end
end


# An invocation of #play by a Bingo object will use the method definition in the Bingo class definition, not the one in the super class Game definition. 
