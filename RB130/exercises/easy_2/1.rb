# Write a method that does the same thing as Range#step, but does not operate on a range. Instead, your method should take 3 arguments: the starting value, the ending value, and the step value to be applied to each iteration. 
# Your method should also take a block to which it will yield (or call) successive iteration values.


# loop to build a range array
# after building, iterate through it passing the block
# return an array of 3 elements (same three passed)



def step(start_val, end_val, step_val)
  range_arr = [start_val]
  loop do
    next_val = range_arr[-1] + step_val
    break if next_val > end_val
    range_arr << next_val
  end

  range_arr.each {|val| yield(val)}
  [start_val, end_val, step_val]
end









step(1, 10, 3) { |value| puts "value = #{value}" }

# value = 1
# value = 4
# value = 7
# value = 10