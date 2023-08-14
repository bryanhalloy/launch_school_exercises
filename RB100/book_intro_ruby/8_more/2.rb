=begin
What will the following program print to the screen? What will it return?

Copy Code
def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }


It will print nothing because it is not executed. Needs a call method for the block


It will return nothing

=end

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }