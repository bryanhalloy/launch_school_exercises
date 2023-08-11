=begin 

How do you return the word "example" from the following array?

Copy Code
arr = [["test", "hello", "world"],["example", "mem"]]

=end

arr = [["test", "hello", "world"],["example", "mem"]]
returned_val = arr.last.first
puts returned_val
