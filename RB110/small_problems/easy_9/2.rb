def twice (input_int)
  if is_double_number(input_int)
    return input_int
  else
    return input_int * 2
  end
end

def is_double_number(input_int)
  num_string = input_int.to_s
  return false if num_string.size.odd?
  mid_left_index = num_string.size / 2 - 1
  num_string[0..mid_left_index] == num_string[mid_left_index + 1..-1]
  # if len odd return false
  # to string, split in two compare both sides

  #return bool
end







p twice(103103)
p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10