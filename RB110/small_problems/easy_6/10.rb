
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2



# will it mutate array 1?
# yes

# will it mutate array 2?
# yes

# it will print %w(Moe Larry CURLY SHEMP Harpo CHICO Groucho Zeppo)