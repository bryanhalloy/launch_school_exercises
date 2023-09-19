# A fixed-length array is an array that always has a fixed number of elements. Write a class that implements a fixed-length array, and provides the necessary methods to support the following code:


class FixedArray
  def initialize(input_size)
    @fixed_array = Array.new(input_size,nil)
  end

  def to_a
    @fixed_array.dup
  end

  def []=(idx,value)
    if idx > (@fixed_array.size - 1)
      raise IndexError, "Out of bounds!"
    end
    @fixed_array[idx] = value
  end

  def [](idx)
    if idx > (@fixed_array.size - 1)
      raise IndexError, "Out of bounds!"
    end
    @fixed_array[idx]
  end

  def to_s
    @fixed_array.dup.to_s
  end


end






#test
fixed_array = FixedArray.new(5)
puts fixed_array[3] == nil
puts fixed_array.to_a == [nil] * 5

fixed_array[3] = 'a'
puts fixed_array[3] == 'a'

puts fixed_array.to_a == [nil, nil, nil, 'a', nil]

fixed_array[1] = 'b'
puts fixed_array[1] == 'b'
puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]

fixed_array[1] = 'c'
puts fixed_array[1] == 'c'
puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]


fixed_array[4] = 'd'
puts fixed_array[4] == 'd'
puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']


puts fixed_array.to_s == '[nil, "c", nil, "a", "d"]'

puts fixed_array[-1] == 'd'
puts fixed_array[-4] == 'c'

begin
  fixed_array[6]
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[-7] = 3
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[7] = 3
  puts false
rescue IndexError
  puts true
end