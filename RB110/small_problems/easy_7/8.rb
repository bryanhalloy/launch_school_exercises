def multiply_list (arr_1, arr_2)
  arr_1.zip(arr_2).map {|sub_arr| sub_arr[0] * sub_arr[1]}

end



p multiply_list([3, 5, 7], [9, 10, 11])
p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]