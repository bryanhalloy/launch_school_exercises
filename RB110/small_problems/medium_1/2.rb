def rotate_array (input_arr)
  new_arr = []
  new_arr[0..input_arr.size-2] = input_arr[1..-1]
  new_arr << input_arr[0]
  new_arr
  #return new array
end

def rotate_rightmost_digits(input_arr, n_digits)
  new_num_arr = input_arr.to_s.chars
  new_num_arr[-n_digits..-1] = rotate_array(new_num_arr[-n_digits..-1])
  new_num_arr.join.to_i
  # Turn into array of characters
  # Splice off the back part
  # Rotate it
  # Join it back with original part
  # #return new integer
end








p rotate_rightmost_digits(735291, 3)
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917