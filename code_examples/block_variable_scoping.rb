outer_string = "outer_string"

[1,2,3].each do |num|
  inner_string = "inner_string"
  puts outer_string # => "outer_string"
  #local variable defined outside the block is accessible in the block
end

puts inner_string  #=> NameError - unidentified local variable. 
# local variable defined in a block is not accessible outside the block



