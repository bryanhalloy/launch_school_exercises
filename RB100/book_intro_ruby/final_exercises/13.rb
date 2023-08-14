
# Ex 13

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if do |v|
  v.to_s.start_with?('s')
end
puts arr

puts "---------"

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if do |v|
  (v.to_s.start_with?('s') || v.to_s.start_with?('w'))
end
puts arr
