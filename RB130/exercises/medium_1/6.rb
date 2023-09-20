
public
def convert_to_base_8(n)
  n.to_s(8).to_i
end

# Replace `argument` with the correct argument below

base8_proc = method(:convert_to_base_8).to_proc

# We'll need a Proc object to make this code work
# Replace `a_proc` with the correct object
p [8, 10, 12, 14, 16, 33].map(&base8_proc)

p [8, 10, 12, 14, 16, 33].map(&:convert_to_base_8)


#convert a method to a proc - 

# first write a method as a symbol
# run Object#method(symbol) on the symbol
# have the method object invoke.to_proc, to convert it to a proc. 


# convert a proc to a block:
# prepend the proc variable with & and pass it in parenthesis as an argument to a method that takes a block. 

Method to a symbol, symbol to a method object, method object to a proc, proc to a block