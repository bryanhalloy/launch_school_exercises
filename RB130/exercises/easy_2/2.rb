

def zip(arr_1, arr_2)
  result_array = []
  arr_1.size.times do |iter|
    result_array[iter] = [arr_1[iter],arr_2[iter]]
  end
  result_array
end


p zip([1, 2, 3], [4, 5, 6])
p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]