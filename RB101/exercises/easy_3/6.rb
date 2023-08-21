def xor?(arg_1, arg_2)
  !! ( (arg_1 && !arg_2) || (!arg_1 && arg_2) ) 
end



puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
puts xor?(false,nil)
puts xor?(1,nil)
puts xor?(1,2)