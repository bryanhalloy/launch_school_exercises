def reversed_number (input_int)
  input_int.to_s.split('').reverse.join.to_i
end


#test the method
puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # No leading zeros in return value!
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1


puts reversed_number(12000)
puts reversed_number(12345)