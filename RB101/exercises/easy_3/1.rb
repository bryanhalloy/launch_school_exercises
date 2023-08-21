def solcitit_number(value_number)
  puts "\nEnter value #{value_number}"
  return gets.chomp.to_i
end

user_numbers = []

1.step(by: 1, to:6) {|n| user_numbers.push(solcitit_number(n))}

lastnum = user_numbers.pop
indicator = user_numbers.include?(lastnum) ? "does" : "does not"

puts "\nThe number #{lastnum} #{indicator} appear in #{user_numbers}."



