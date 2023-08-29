def multiply_all_pairs (arr_1, arr_2)
  result_arr = []
  arr_1.each do |arr1_val|
    arr_2.each do |arr2_val|
      result_arr << arr1_val * arr2_val
    end
  end
  result_arr.sort
end
  
  
  #return new array, sorted least to greatest




p multiply_all_pairs([2, 4], [4, 3, 1, 2])
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
