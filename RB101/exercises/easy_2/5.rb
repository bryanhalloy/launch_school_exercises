print "What is your name? "
name_input = gets.chomp

if name_input.include?("!")
  name_input.sub!("!",'')
  greeting = "HELLO " + name_input.upcase + '. WHY ARE WE SCREAMING?'
else
  greeting = 'Hello ' + name_input + '.'
end

puts greeting



