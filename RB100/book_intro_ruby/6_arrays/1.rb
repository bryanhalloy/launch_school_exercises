=begin

Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.

Copy Code
arr = [1, 3, 5, 7, 9, 11]
number = 3


=end

arr = [1, 3, 5, 7, 9, 11]
number = 3

status = arr.include?(number) ? "yes" : "no"
puts status


