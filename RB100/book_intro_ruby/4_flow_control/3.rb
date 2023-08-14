=begin
Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

=end

puts ('Provide a number between 0 and 100: ')
intakenum = gets.chomp.to_i

assessment = case intakenum
when 0..50
  "Your number is between 0 ond 50"
when 51..100
  "Your number is between 51 ond 100"
else
  intakenum > 100 ? "Your number is greater than 100" : "Invalid number"
end

puts (assessment)

