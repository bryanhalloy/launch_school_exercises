arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

answer = arr.map do |sub_arr|
  sub_arr.select {|element| element % 3 == 0}
end

p answer




# use either select or reject (and other methods)
# return new array
#   same structure
#   only conatining ints mulitples of 3
