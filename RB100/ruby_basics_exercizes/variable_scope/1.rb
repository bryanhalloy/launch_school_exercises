#This will return 7. The variable in the method is local and is destroyed after the method is return. The returned value of the method is not stored anywhere and neither is re-assigned to the memory location a is pointing to, nor is a reassigned to point to the new location with the returned value from the method. 

# KEY NOTE: += does not mutate a varaible, it binds the varibale to a NEW object. It sets the variable to point to a new object. 

a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

