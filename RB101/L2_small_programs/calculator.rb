# ask the user for two numbers
# ask the user for an operation
# perform the operation on the two numbers
# output the result



Kernel.puts("Welcome to the calculator")
Kernel.puts("Input first number")
number_1 = Kernel.gets().chomp()

Kernel.puts("Input second number")
number_2 = Kernel.gets().chomp()

Kernel.puts("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

if operator == '1'
  result = number_1.to_i + number_2.to_i
elsif operator == '2'
  result = number_1.to_i - number_2.to_i
elsif operator == '3'
  result = number_1.to_i * number_2.to_i
elsif operator == '4'
  result = number_1.to_f / number_2.to_f
end

Kernel.puts("= #{result}")






