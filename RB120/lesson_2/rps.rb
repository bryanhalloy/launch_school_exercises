=begin
===Step 1: Write a textual description of the problem or exercise.
Rock, Paper, Scissors is a two-player game where each player chooses
one of three possible moves: rock, paper, or scissors. The chosen moves
will then be compared to see who wins, according to the following rules:

- rock beats scissors
- scissors beats paper
- paper beats rock

If the players chose the same move, then it's a tie.


===Step 2: Extract the major nouns and verbs from the description.
Nouns: player, move, rule
Verbs: choose, compare

===Step 3: Organize and associate the verbs with the nouns.
Player
  -choose
Move
Rule

  -compare


=end

class Player
  attr_accessor :move, :name
  def initialize
    @move = nil
    set_name
  end
end


class Move
  def initialize
  end
end

class Rule
  def initialize
  end
end

def compare(move1, move2)
end


class Human < Player
  def set_name
    puts "Enter name"
    self.name = gets.chomp
  end

  def choose
    choice = nil
      loop do 
        puts "Please chose rock, paper, or scissors:"
        choice = gets.chomp
        break if ['rock', 'paper', 'scissors'].include?(choice)
        puts "Sorry try entry again"
      end
    self.move = choice
  end
end

class Computer < Player
  def set_name
    self.name = ['Alexa', 'Hal', 'C3PO'].sample
  end

  def choose
    self.move = ['rock', 'paper', 'scissors'].sample
  end
end



class RPSGame
  attr_accessor :human, :computer
  
  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts "Welcome to rock paper scissors"
  end

  def display_goodbye_message
    puts "Goodbye!"
  end

  def display_winner
    puts "#{self.human.name} chose #{self.human.move}."
    puts "#{self.computer.name} chose #{self.computer.move}."
    case human.move
    when 'rock'
      puts "It's a tie!" if computer.move == 'rock'
      puts "You won!" if computer.move == 'scissors'
      puts "You lost!" if computer.move == 'paper'
    when 'paper'
      puts "You won!" if computer.move == 'rock'
      puts "You lost!" if computer.move == 'scissors'
      puts "It's a tie!" if computer.move == 'paper'
    when 'scissors'
      puts "You lost!" if computer.move == 'rock'
      puts "It's a tie!" if computer.move == 'scissors'
      puts "You won!" if computer.move == 'paper'
    end
  end

  def play_again?
    puts "Play again? (y/n)"
    answer = gets.chomp
    answer == 'y'
  end

  def play
    display_welcome_message

    loop do
      human.choose
      computer.choose
      display_winner
      break unless play_again?
    end
    display_goodbye_message
  end
end

RPSGame.new.play

