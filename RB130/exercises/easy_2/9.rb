
# intake chunk_size
# there will be size - chunk_size chunks
# iterate using times
#   generate chunk from indexes
#   send to block using splat
# return nil


def each_cons(arr, cons_len = 2)
  for iter in 0...(arr.size - cons_len + 1)
    yield(*arr[iter,cons_len])
  end
  nil
end

  



hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
p result == nil
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
result = each_cons([]) do |value1, value2|
  hash[value1] = value2
end
p hash == {}
p result == nil

hash = {}
result = each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
p hash == {'a' => 'b'}
p result == nil