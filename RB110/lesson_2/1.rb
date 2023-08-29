arr = ['10', '11', '9', '7', '8']

a = arr.sort do |a_str, b_str|
  b_str.to_i <=> a_str.to_i
end

p a


