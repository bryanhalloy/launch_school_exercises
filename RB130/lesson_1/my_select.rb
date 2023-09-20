def select(arr)
  output = []
  index = 0
  
  loop do
    output << arr[index] if yield(arr[index])
    index += 1
    break if index >= arr.size
  end
  output
end




array = [1, 2, 3, 4, 5]

p select(array) { |num| num.odd? }      # => [1, 3, 5]
# select(array) { |num| puts num }      # => [], because "puts num" returns nil and evaluates to false
# select(array) { |num| num + 1 }  