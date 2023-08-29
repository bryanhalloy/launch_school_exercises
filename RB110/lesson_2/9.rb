arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

a = arr.map do |sub_arr|
  sub_arr.sort {|a,b| -(a <=> b)}
end

p a
