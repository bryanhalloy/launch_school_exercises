def average(input_arr)
  input_arr.reduce(0) {|val, tot| tot += val} / input_arr.size.to_f
end




puts average([1, 5, 87, 45, 8, 8])
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40