



# This will also retun 7. The 'a' in the method definition is a different 'a' than is used in the main stack. Local variables inside the method definition are self contained and not available outside the method definition. 


a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a