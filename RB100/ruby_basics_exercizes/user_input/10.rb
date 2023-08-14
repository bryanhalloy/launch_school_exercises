def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

input_1 = nil
input_2 = nil

loop do
  loop do  #Loop for the first integer
    puts "Please enter a positive or negative integer: "
    input_1 = gets.chomp
    if valid_number? (input_1)
      input_1 = input_1.to_i
      break
    else
      puts "Not a valid integer. Try again."
      next
    end
  end

  loop do  #Loop for the second integer
    puts "Please enter a positive or negative integer: "
    input_2 = gets.chomp
    if valid_number?(input_2)
      input_2 = input_2.to_i
      break
    else
      puts "Not a valid integer. Try again."
      next
    end
  end

  count_pos = 0
  count_neg = 0

  input_1 > 0 ? (count_pos += 1) : (count_neg += 1)
  input_2 > 0 ? (count_pos += 1) : (count_neg += 1)

  if (count_pos == 1 && count_neg == 1)
    puts "Output: #{input_1} + #{input_2} = #{input_1 + input_2}"
    break
  else
    puts "Sorry. One integer must be positive, one must be negative."
    puts "Please start over."
    next
  end
end







