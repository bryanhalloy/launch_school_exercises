def merge(arr_1, arr_2)
  choosefrom_arr = (arr_1.clone + arr_2.clone).flatten.flatten
  
  result_arr = []

  loop do 
    min_value = choosefrom_arr.min
    result_arr << min_value
    choosefrom_arr.delete_at(choosefrom_arr.find_index(min_value))
    break if choosefrom_arr.empty?
  end
  result_arr
end

a_1 = [1, 5, 9]
a_2 = [2, 6, 8]


p merge(a_1, a_2)
p a_1
p a_2


# p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
# p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# p merge([], [1, 4, 5]) == [1, 4, 5]
# p merge([1, 4, 5], []) == [1, 4, 5]