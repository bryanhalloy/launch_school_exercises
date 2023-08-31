def sum_square_difference(num)
  sq_of_sums = ((1..num).to_a.reduce(&:+) ** 2) 
  sum_of_sqs = (1..num).to_a.reduce(0) {|total, v| total + v**2}
  
  sq_of_sums - sum_of_sqs
end







p sum_square_difference(3)
p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150