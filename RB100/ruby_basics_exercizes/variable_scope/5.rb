

=begin
I found the LS article here extremely helpful in gaining a primitive, but passable, understanding of this and the prior few problems. Additionally, playing around with variable assignment and reassignment, as well as object mutation, with a variate of object types, and then checking object id's (with the .object_id method) was extremely helpful. 

https://launchschool.medium.com/variable-references-and-mutability-of-ruby-objects-4046bd5b6717#:~:text=Objects%20can%20be%20either%20mutable,they%20can%20only%20be%20reassigned.

Some key concepts to decipher, perhaps indepent of eachother at first:
- How object assignment works
- Mutable (eg strings) vs immutable (eg numbers and boolean) objects
- Operations that mutate (e.g. << or []) vs re-assign.
- Object passing in methods.  

=end


a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a