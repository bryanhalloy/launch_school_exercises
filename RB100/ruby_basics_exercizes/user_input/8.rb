def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

input_numerator = nil
input_denominator = nil

loop do
  puts "Enter the numerator"
  input_numerator = gets.chomp
  if valid_number?(input_numerator)
    break
  else
    puts "Invalid input. Only integers are allowed."
  end
end

loop do
  puts "Enter the denominator"
  input_denominator = gets.chomp
  if (valid_number?(input_denominator) && input_denominator.to_i != 0)
    break
  else
    puts "Invalid input. Only non-zero integers are allowed for the denominator."
  end
end

used_numerator = input_numerator.to_i
used_denominator = input_denominator.to_i

unless used_numerator % used_denominator == 0
  used_numerator = used_numerator.to_f
  used_denominator = used_denominator.to_f

end


quotient = used_numerator /used_denominator


puts "Result: #{input_numerator} / #{input_denominator} = #{quotient}"

