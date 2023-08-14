


a = 7
array = [1, 2, 3]

array.each do |element|
  b = element
end

puts a


# This outputs 3. The variable 'a' is getting a new object assigned to it with each pass over the array. This is an iteration block, not a method, so 'a' is in scope. 