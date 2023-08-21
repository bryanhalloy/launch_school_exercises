advice = "Few things in life are as important as house training your pet dinosaur."

advice["important"]= "urgent"

puts advice



advice2 = "Few things in life are as important as house training your pet dinosaur."

advice2.gsub!('important','urgent')



puts advice2