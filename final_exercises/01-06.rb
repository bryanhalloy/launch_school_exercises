
my_arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


my_arr.each {|v| puts("The value is #{v}")}
puts "--- end of 1 ----"

# Exercise 2
my_arr.each do |v|
  if v > 5
    puts("The value is #{v}")
  end
end
puts "--- end of 2 ----"

# Exercise 3
odd_nums = my_arr.select {|v| v.odd?}
puts odd_nums
puts "--- end of 3 ----"

# Exercise 4
my_arr.push(11)
my_arr.unshift(0)
puts my_arr
puts "--- end of 4 ----"

#Exercise 5
my_arr.delete(11)
my_arr.unshift(3)
puts my_arr
puts "--- end of 5 ----"

#Exercise 6
my_arr.uniq!
puts my_arr
puts "--- end of 6 ----"
