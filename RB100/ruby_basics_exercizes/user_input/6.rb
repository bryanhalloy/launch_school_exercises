PASSWORD_1 = 'dog'
welcome_message = "Welcome my friend!"

loop do
  puts "Please enter your password: "
  pw_input = gets.chomp
  access_status = pw_input == PASSWORD_1
  if access_status
    puts welcome_message
    break
  else
    puts "Incorrect password"
  end
end


