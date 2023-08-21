puts "What is the bill?"
bill_original = gets.chomp.to_f

puts "\nWhat is the tip percentage? (Enter a whole number, eg '15' for 15%)?"
tip_factor = gets.chomp.to_f / 100.0

tip = (bill_original * tip_factor).round(2)
bill_total = bill_original + tip

output_msg = "The tip is $#{tip.round(2)}\nThe total is $#{bill_total.round(2)}"

puts output_msg
