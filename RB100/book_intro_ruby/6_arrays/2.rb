=begin
What will the following programs return? What is the value of arr after each?

Copy Code
1. arr = ["b", "a"]
   arr = arr.product(Array(1..3))
   arr.first.delete(arr.first.last)

   --> 
   b 1 b2 b3 a1 a2 a3 
   it will return 1. Because delte returns the item that was deleted. 

2. arr = ["b", "a"]
   arr = arr.product([Array(1..3)])
   arr.first.delete(arr.first.last)

   b [1,2,3]   a [1,2,3]
   [1,2,3]


   it will return the array [1,2,3]
=end
