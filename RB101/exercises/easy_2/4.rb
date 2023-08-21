puts "What is your age?"
age_current = gets.chomp.to_i

puts "At what age would you like to retire?"
age_retire = gets.chomp.to_i

year_current = Time.new.year.to_i
years_to_retire = age_retire - age_current
year_retire = year_current + years_to_retire

puts "It's #{year_current}. You will retire in #{year_retire}."
puts "You only have #{years_to_retire} years of work to go!"
