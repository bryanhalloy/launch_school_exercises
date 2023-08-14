

# outputs an error because a is not available in the method definitnion. 

a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a