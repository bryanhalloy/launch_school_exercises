# Write a method that takes a sorted array of integers as an argument, and returns an array that includes all of the missing integers (in order) between the first and last elements of the argument.

def missing(arr)
  (arr.min..arr.max).to_a.reject do |val|
    arr.include?(val)
  end


  # find max and min
# make an array that includes all values between max and min
# select from that array only values which are not in original array
# return selected array

end





p missing([-3, -2, 1, 5])
p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []