puts "How many lines should I print?"
lines_to_print = gets.chomp.to_i

while lines_to_print < 3
  puts "Error - must be at least 3 lines."
  puts "Enter another amount of lines to print:"
  lines_to_print = gets.chomp.to_i
end

lines_to_print.times do
  puts "Launch School is the best!"
end

