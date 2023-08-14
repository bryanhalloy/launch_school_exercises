puts " Do you want to print something? Type 'y' if yes"
response = gets.chomp
puts "something" if response.downcase == "y"
