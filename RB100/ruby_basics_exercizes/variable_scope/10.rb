a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a


# It returns an error, because a in the each block can access the broader env of the method definition, but a is never defined in the method definition. 