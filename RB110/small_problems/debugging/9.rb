def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  puts "Let's play..."
  winning_number = (1..max_number).to_a.sample
  attempts = 0

  loop do
    attempts += 1
    if attempts > max_attempts
      puts "You lose. Too many attempts."
      break
    end

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
      break
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number
    end
    
  end
  # Try again:
  #guess_number(max_number, max_attempts)
end

guess_number(10, 3)