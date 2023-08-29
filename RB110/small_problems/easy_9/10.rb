def sum(input_int)
  input_int.to_s.chars.reduce(0) {|total, char| total + char.to_i}
  #return int
end



puts sum(496)
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45