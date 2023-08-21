puts "Please write word or multiple words:"
input_string = gets.chomp

count_char = input_string.gsub(" ","").length
puts "There are #{count_char} characters in '#{input_string}'."
