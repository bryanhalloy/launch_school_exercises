puts "Please enter an integer greater than 0:"
input_integer = gets.chomp.to_i

puts"\nEnter 's' to compute the sum, 'p' to compute the product."
input_operation = gets.chomp

case input_operation
when 's'
  result = Array(1..input_integer).sum
  operation = 'sum'
when 'p'
  result = 1
  input_integer.times {|v| result *= (v + 1)}
  operation = 'product'
end

output_msg = "The #{operation} of the integers between 1 and #{input_integer} is #{result}."

puts output_msg