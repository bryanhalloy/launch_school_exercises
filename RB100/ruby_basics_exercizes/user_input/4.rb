loop do
  puts "Do you want to print something? (y/n)"
  response = gets.chomp
  response.downcase!
  if response == "y"
    puts "something"
    break
  elsif response == "n"
    break
  else
    puts "Error - please type 'y' or 'n'"
  end
end