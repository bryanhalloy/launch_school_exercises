require 'pry'
require 'pry-byebug'

a = 5
binding.pry
if a < 6
  a + 2
else
  a - 2
end

puts a

 