# write a method that takes an array as an argument. 
# The method should yield the contents of the array to a block, 
# which should assign your block parameters in such a way that it ignores the first two elements, and groups all remaining elements as a raptors array.


birds = ['crow', 'finch', 'hawk', 'eagle']

def arrmeth(arr)
  yield (arr)
end

arrmeth(birds) do |_,_, *bd|
  puts "Raptors: #{bd.join(', ')}"
end


