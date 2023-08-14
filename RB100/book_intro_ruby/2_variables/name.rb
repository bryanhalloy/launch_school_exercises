=begin
Write a program called name.rb that asks the user to type in their name and then prints out a greeting message with their name included.
=end

print "What is your first name? "
name_first = gets.chomp

print "Thanks. Now what is your last name? "
name_last = gets.chomp

name = name_first + ' ' + name_last

puts "Hi #{name}!"


10.times {puts "Hi again #{name}!!"}
