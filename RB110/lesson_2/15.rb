arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]


arr_of_hashes_even_ints = arr.select do |hsh|  
  hsh.values.flatten.map {|v| v.even?}.all?
end

p arr_of_hashes_even_ints



# conditionally select from the array
#   access values array
#   test if all are even





# return an arry
#   contains only the hashes where all ints are even

