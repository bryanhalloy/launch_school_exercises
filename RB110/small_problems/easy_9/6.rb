def sequence(count, first_num)
  return [] if count == 0
  result_array = []
  
  for iter in (1..count) do 
    result_array << first_num * iter
  end
  result_array
  # return array
end





p sequence(4, -7)
p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []