=begin
What method could you use to find out if a Hash contains a specific value in it? Write a program that verifies that the value is within the hash.

=end

val_to_check = "bed"

equip = {:living => "couch", kitchen:"fridge", :bedroom => "bed"}


puts equip.values.include?(val_to_check)

puts equip.include?(val_to_check)

