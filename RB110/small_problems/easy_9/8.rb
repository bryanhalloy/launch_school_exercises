def buy_fruit(input_array)
  fruits_enumerated_array = []
  input_array.each do |sub_arr|
    sub_arr[1].times {fruits_enumerated_array << sub_arr[0]}
  end
  fruits_enumerated_array
  
  
  
  # build a new array
  # each through main array
  # access string and multiplier
  # runs times loop
  #return array
end




p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) 
p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == ["apples", "apples", "apples", "orange", "bananas","bananas"]