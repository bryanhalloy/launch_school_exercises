

# 1
"xyz".upcase

# 2
a = %w(a b c d e)
a.insert(3, 5,6,7)
a.insert(a.index('d'),4,5,6,7)

# 3
s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect
# => 
# It returns a string that is the array. 

Inspect is an alias for to_s on an array, so it returns a 

puts s.split(',').inspect
#It returns an array of substrings, splitting at each ','. Will return an array of three values. 

puts s.split(',', 2).inspect
#It returns an array of substrings, with no more than 1 split (n-1) occuring. So this will return an array with two values. 