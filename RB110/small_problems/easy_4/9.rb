# In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.


DIG_TO_CHAR = {
  0 =>'0',
  1 =>'1',
  2 =>'2',
  3 =>'3',
  4 =>'4',
  5 =>'5',
  6 =>'6',
  7 =>'7',
  8 =>'8',
  9 =>'9'
}

def integer_to_string(input_int)
  # use a hash again for conversion
  return '0' if input_int == 0 
  running_int = input_int
  char_arr = []
  divisor = 10

  until divisor > input_int * 10 do
    digit = (running_int % divisor) / (divisor / 10)

    running_int -= digit

    char_arr.unshift(DIG_TO_CHAR[digit])

    divisor *= 10
  end
  char_arr.join


  # loop through the int
  # each time checking progressively higher divosors 10^
  # check modulus
  # convert modulus to string
  # add string to the front of the array
  # drop the remianded from the running int
  # stop when divisor > input int
  # end loop
  # join all chars

end



# p integer_to_string(0)
p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
p integer_to_string(7) == '7'