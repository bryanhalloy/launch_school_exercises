numbers = [] # not needed?
count = 5


counter = 0
while counter < count
  counter += 1
  puts rand(0..99)
end


# other method ------


numbers = []

while numbers.size < 5
  numbers.push(rand(0..99))
end

puts numbers
