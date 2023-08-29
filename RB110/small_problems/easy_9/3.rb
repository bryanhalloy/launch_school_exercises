def sequence(input_int)
  output_array = []
  for num in (1..input_int)
    output_array << num
  end
  output_array
end



p sequence(5)
p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]