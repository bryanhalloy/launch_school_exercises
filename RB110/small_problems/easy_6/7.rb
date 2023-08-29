def halvsies(input_arr)
  mid_left_index = input_arr.size - (input_arr.size / 2) - 1
  [input_arr[0..mid_left_index],input_arr[mid_left_index + 1 .. -1]]
end




p halvsies([1, 2, 3, 4])
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]