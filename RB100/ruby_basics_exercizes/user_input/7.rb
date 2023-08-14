USERNAME_1 = 'BryanHalloy'
PASSWORD_1 = 'dog'
welcome_message = "Welcome my friend!"

loop do
  puts "Please enter your username: "
  un_input = gets.chomp
  puts "Please enter your password: "
  pw_input = gets.chomp
  
  access_status = 
    un_input == USERNAME_1 && 
    pw_input == PASSWORD_1

  if access_status
    puts welcome_message
    break
  else
    puts "Incorrect username and/or password"
  end
end


