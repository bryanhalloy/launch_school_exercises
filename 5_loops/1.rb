=begin
What does the each method in the following program return after it is finished executing?

it returns an array, the same array as x


=end


x = [1, 2, 3, 4, 5]
out = x.each do |a|
  a + 1
end

puts out