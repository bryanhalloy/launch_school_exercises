# A player inputs a number x times, and if they correctly guess the target number on any try they win, and if instead they run out of guesses (x) they lose. 

# Nouns:
# player
# guess

# Verbs:
# make a guess
# check if guess is valid
# evaluate if guess is correct
# display message

require 'pry'

class TargetNumber
  def initialize
    @number = (1..100).to_a.sample
  end

  def check_guess(guess)
    guess.to_i <=> @number
  end
end


class GuessingGame
  def initialize
    @target_number = TargetNumber.new
    @guesses_remaining = 7
    @current_guess = nil
  end

  def display_remaining_guesses
    puts "You have #{@guesses_remaining} guesses remaining."
  end
  
  def intake_guess
    loop do
      puts "Enter a number between 1 and 100:"
      @current_guess = gets.chomp
      break if (1..100).include?(@current_guess.to_i)
      print "Invalid guess. "
    end
  end
  
  def play
    until @guesses_remaining <= 0
      display_remaining_guesses
      intake_guess
      @guesses_remaining -= 1
      # binding.pry

      case @target_number.check_guess(@current_guess)
      when 0
        puts "That's the number!\n"
        puts 'You won!'
        return
      when 1
        puts 'Your guess is too high.'
        next
      when -1
        puts 'Your guess is too low.'
        next
      end
    end
    puts 'You have no more guesses. You lost!'
  end

end



game = GuessingGame.new
game.play

