def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

test_object = "hello world"
p test_object.object_id

p spin_me(test_object).object_id # "olleh dlrow"



# Given the method's implementation, will the returned string be the same object as the one passed in as an argument or a different object?


# It will be a new object. str initially points to the same string ('hello world') object, but when it calls the split method, the split method returns an array of elements that each point to new, different string objects. The reverse! method mutates each one of these objects (that the array elements point to), but they do not mutate test_object. The return value of join (a new string) is ultimately what is retutrned by spinme.  