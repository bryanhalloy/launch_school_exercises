

# It should return 7, because once again the 'a' in the method definition is self contained. 




a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a