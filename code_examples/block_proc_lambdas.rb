def output_block_return_value(&block)
  puts block.call(100)
end

output_block_return_value {|blk_arg| blk_arg * 2} # => 200



def output_proc_return_value(proc)
  puts proc.call(10)
end



# Syntax error. Explcit block parameter can only be defined after any regular method parameters. 
def output_block_return_value_withnum(&block, num)
  puts block.call(num)
end


#This is okay though:
def output_block_return_value_withnum(num, &block)
  puts block.call(num)
end




def output_proc_return_value_withnum(proc, num)
  puts proc.call(num)
end





output_block_return_value {|blk_arg| blk_arg * 2} # => 200


# output_block_return_value(|blk_arg| blk_arg * 2) # => SyntaxError
# An expression is not converted to a block. 

# output_block_return_value( {|blk_arg| blk_arg * 2} ) # => SyntaxError
# We can't define a block and pass it in the way an object is passed as an argument. 

# What we can do, though, is store a block as a Proc object, which is an object that encapsulates a block of code. 

proc = Proc.new {|blk_arg| blk_arg * 2} #Not we are passing in a block as an implicit argument, not an explicit argument. 

output_proc_return_value(proc) # => 200


output_block_return_value_withnum(100) {|blk_arg| blk_arg * 2}
output_proc_return_value_withnum(proc, 30)