=begin

Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.

=end

=begin 
puts("Type instructions: ")
fb = gets.chomp
puts("Im doing it")

while fb != "STOP"
  puts("Type instructions: ")
  fb = gets.chomp
end
=end


loop do
  puts("Type instructions: ")
  fb = gets.chomp
  if fb == "STOP"
    break
  end
end

  