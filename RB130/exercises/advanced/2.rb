# # Group 1
# my_proc = proc { |thing| puts "This is a #{thing}." }
# puts my_proc
# puts my_proc.class
# my_proc.call
# my_proc.call('cat')


=begin
A proc is like a block that is stored in an object. Calling to_s on proc shows that it is an object. We see that it is an object of class Proc. Invoking 'call' passes arguments to the proc and executes the proc (like if it were a block. 
=end



# # Group 2
# my_lambda = lambda { |thing| puts "This is a #{thing}." }
# my_second_lambda = -> (thing) { puts "This is a #{thing}." }
# puts my_lambda
# puts my_second_lambda
# puts my_lambda.class
# my_lambda.call('dog')
# my_lambda.call rescue
# my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." }

=begin
A lambda is an object of class Proc. there is a kernal method lambda that creates a lambda of class Proc. There is no class Lambda. Lambdas have strict arity (require to be passed the same number of arguments as as defined in block parameters. 
=end


# Group 3
# def block_method_1(animal)
#   yield
# end

# block_method_1('seal') { |seal| puts "This is a #{seal}."}
# block_method_1('seal')

# blocks are required to be passed as arguments if yield is invoked in a method definition


# Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end
block_method_2('turtle') { puts "This is a #{animal}."}

# A block has loose arity. But have to explicity define block paremeters in the block if you want to use them. 


