# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# Note: for the test case list = ['abc'], we want to reverse the elements in the array. The array only has one element, a String, but we're not reversing the String itself, so the reverse! method call should return ['abc'].


#reverse the elements in the array
# so arr[0] needs to point to the object that arr[-1] was pointing to



def reverse!(input_array)
  input_array_clone = input_array.clone
  input_array.each_with_index do |element, index|
    input_array[index] = input_array_clone[-1 - index]
  end
  input_array
end

# clone it
# iterate through the original array
# using assignment method to re-assign element, citing inverese of the cloned metho





p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

p list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

p list = []
p reverse!(list) == [] # true
p list == [] # true