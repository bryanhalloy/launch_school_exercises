def method_a(&input_block)
  input_block.call 
end

puts method_a.call