numbers = [1, 2, 3, 4]
numbers.each do |number|
  puts number
  numbers.shift(1)
end

# This will output 1 3 . On the second iteration, number will point to 3. On the third iteration, the loop won't actually iterate?
p numbers

# This will return the array 1 4 because elements at index 1 and 2 will be reomved. 


puts "------"



numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

p numbers


# Output
# 1 2 



# Return
# 1 2 