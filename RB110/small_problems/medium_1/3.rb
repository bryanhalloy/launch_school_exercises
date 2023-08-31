def max_rotation (input_int)
  num_digits = input_int.to_s.size
  
  running_number = input_int
  (num_digits).times do |iter|
    running_number = rotate_rightmost_digits(running_number, num_digits-iter)
  end
  running_number
  # run for loop, tracking to index
  # each time, run the rotation function
  # return int
end

def rotate_array (input_arr)
  new_arr = []
  new_arr[0..input_arr.size-2] = input_arr[1..-1]
  new_arr << input_arr[0]
  new_arr
  #return new array
end

def rotate_rightmost_digits(input_int, n_digits)
  new_num_arr = input_int.to_s.chars
  new_num_arr[-n_digits..-1] = rotate_array(new_num_arr[-n_digits..-1])
  new_num_arr.join.to_i
  # Turn into array of characters
  # Splice off the back part
  # Rotate it
  # Join it back with original part
  # #return new integer
end




p max_rotation(735291)
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845