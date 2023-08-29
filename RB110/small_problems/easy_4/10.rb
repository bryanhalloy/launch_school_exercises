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
end


def signed_integer_to_string(input_int)
  naive_string = integer_to_string(input_int.abs)
  naive_string.prepend('-') if input_int < 0
  naive_string.prepend('+') if input_int > 0
  naive_string
  
  # take abs value
  # run above method
  # if origianl is less than zero then prepend a neg sign
end

# p signed_integer_to_string(-98109)
p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'