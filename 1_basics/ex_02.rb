=begin
Prompt:
Use the modulo operator, division, or a combination of both to take a 
4 digit number and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place

Reflection:
I could have more concisely written this. Remeber that when dividing integers, it returns an integer that is floored already. 
I could have then taken remaineders done the same division
=end

#My original method
take_number = 7405

place_thousands   = (take_number - (take_number % 1000)) / 1000

place_hundreds    = take_number - (1000 * place_thousands)
place_hundreds    = (place_hundreds - (place_hundreds % 100)) / 100

place_tens        = take_number - (1000 * place_thousands) - (100 * place_hundreds)
place_tens        = (place_tens - (place_tens % 10)) / 10

place_ones        = take_number - (1000 * place_thousands) - (100 * place_hundreds) - (10 * place_tens)

puts [place_thousands,place_hundreds,place_tens,place_ones]

#new method
place_thousands  = take_number / 1000
place_hundreds = take_number % 1000 / 100
place_tens = take_number % 1000 % 100 / 10
place_ones = take_number % 1000 % 100 % 10

puts [place_thousands,place_hundreds,place_tens,place_ones]