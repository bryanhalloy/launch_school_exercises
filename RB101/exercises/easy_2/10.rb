def negative(input_number)
  if input_number > 0
    return -1 * input_number
  else
    return input_number
  end
end





puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0 