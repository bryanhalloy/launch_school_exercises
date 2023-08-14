

# "Xy-zy" The method goes in and changes the data in the memory location that a points to. Numbers are immutable, meaning any changes to the variable of type integer or float points to a new memory location. But strings are mutable. 
# The String#[] method is a mutating method. 

# WRONG ANSWER: This will print "Xyzzy". Again, no change to the a varaible, as everything in the method is self contained and not available outside the method.  



a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a