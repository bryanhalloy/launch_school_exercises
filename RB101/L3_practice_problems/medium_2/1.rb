a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id



#My expectation: a != b  but a == c, where I am referencing object id's. 

