numbers = {
  high:   100,
  medium: 50,
  low:    10
}



half_numbers = numbers.map {|k,v| v / 2}

#note that this returnds an array


p half_numbers