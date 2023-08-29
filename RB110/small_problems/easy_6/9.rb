def include?(input_arr, search_value)
  input_arr.map {|element| element == search_value}.any?

end




p include?([1,2,3,4,5,nil], nil)
p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false