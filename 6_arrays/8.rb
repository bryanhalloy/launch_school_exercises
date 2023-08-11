=begin
Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. You should have two arrays at the end of this program, The original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.

=end

arr_1 = [10,11,12,13]

arr_2 = arr_1.map do |v|
  v + 2
end

p arr_1
p arr_2
