# Exercise 7

=begin
 What's the major difference between an Array and a Hash?
An array is an ordered set of objects. A hash is a (generally) unordered set of key:value pairs. 
An array is ordered, a hash is not. Objects in an array are indexed by index, whereas in a hash they have a key. 
=end

# Exercise 8
hash_1 = {:dog => "bark"}
hash_2 = {cat: "meow"}

# Exercise 9
h = {a:1, b:2, c:3, d:4}



puts("Value of b is #{h[:b]}")
h[:e] = 5
puts (h)
h.select! {|k,v| v >= 3.5}
puts (h)


#Exercise 10
=begin
Can hash values be arrays? 
Yes, could can put any object as a hash value. 

Can you have an array of hashes?
Yes!

Examples below
=end

arr_1 = [1,2,3]
arr_2 = [9,10,11]

hash_of_arr = {arr1: arr_1, arr2: arr_2}
puts(hash_of_arr)

hash_2 = {"bugs bunny" => "doc"}

arr_of_hash = [hash_of_arr,hash_2]
puts(arr_of_hash)

arr_of_hash[1]



