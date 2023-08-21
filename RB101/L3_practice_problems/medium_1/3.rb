def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(4)
p factors(10)
p factors(12)
p factors(20)
p factors(100)

p factors(0)


#Bonus 1 - the purpose is check if the remainder of the number and the divisor is zero. If it is, then it is a factor and the divisor should be logged as a factor is true

#Bonus 2 - it returns the array of factors, which was constructed in the loop

