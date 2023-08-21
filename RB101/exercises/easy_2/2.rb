SQMETERS_TO_SQFEET = 10.7639


puts "\nEnter the room length in meters:"
length_meters = gets.chomp.to_f

puts "\nEnter the room width in meters:"
width_meters = gets.chomp.to_f

area_meters = length_meters * width_meters
area_feet = area_meters * SQMETERS_TO_SQFEET

puts "The area of the room is #{area_meters.round(1)} square meters (#{area_feet.round(1)} square feet)."
