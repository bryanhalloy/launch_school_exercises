h = {one: 1, two: 2, 'three':3, :four=> 4, nil => false}



h.each do |k,v| 
  next if v == 3
  p v

end