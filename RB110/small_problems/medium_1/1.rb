def rotate_array (input_arr)
  new_arr = []
  new_arr[0..input_arr.size-2] = input_arr[1..-1]
  new_arr << input_arr[0]
  new_arr
  #return new array
end




p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]   