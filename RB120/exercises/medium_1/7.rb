
require 'pry'

class TargetNumber
  def initialize(low_value, high_value)
    @number = (low_value..high_value).to_a.sample
  end

  def check_guess(guess)
    guess.to_i <=> @number
  end
end


class GuessingGame

  def initialize(low_value, high_value)
    @low_value = low_value
    @high_value = high_value

    @target_number = TargetNumber.new(@low_value, @high_value)
    @guesses_remaining = Math.log2(@high_value - @low_value).to_i + 1
    @current_guess = nil
  end

  def display_remaining_guesses
    puts "You have #{@guesses_remaining} guesses remaining."
  end
  
  def intake_guess
    loop do
      puts "Enter a number between #{@low_value} and #{@high_value}:"
      @current_guess = gets.chomp
      break if (@low_value..@high_value).cover?(@current_guess.to_i)
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



game = GuessingGame.new(501,1500)
game.play

