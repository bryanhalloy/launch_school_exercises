def printlines(n_lines)
  while n_lines > 0
    puts 'Launch School is the best!'
    n_lines -= 1
  end
end


number_of_lines = nil

loop do
  puts '>> How many output lines do you want? Enter a number >= 3:'
  number_of_lines = gets.chomp
  if number_of_lines.downcase == "q"
    puts "Quitting.."
    break 
  end
  
  number_of_lines = number_of_lines.to_i
  if number_of_lines < 3
    puts ">> That's not enough lines. Try again"
    next
  end
    
  printlines(number_of_lines)
end

