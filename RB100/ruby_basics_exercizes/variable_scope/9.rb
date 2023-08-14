

a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a


# WRONG It will output 4. On the last iteration of the each, the object int_3 is assigned to a. But then, int_4 is computed and then that is assigned to a. 

# I either forgot about, or didn't learn about, shadowing. a is shadowed in the each block, so the outer a is unchanged and still points to the int_7 object. 