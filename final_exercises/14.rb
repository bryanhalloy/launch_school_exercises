a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']


new_a = a.map do |v|
  v.to_s.split(" ")
end
new_a.flatten!

p new_a
