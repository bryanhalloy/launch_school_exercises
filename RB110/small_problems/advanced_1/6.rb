def my_method(array)
  if array.empty?
    []
  elsif array.size > 1  
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])


=begin
In the original buggy code, there was a missing conditional expression for elsif (line 4 and 5) to evaluate. As it stood, elsif was evaluating the truthiness of the return value of array's invocation of map, which in all cases where array was not empty, was returning a non-null array which is truthy and evaluated as true for the elsif branch. But, in such cases, there was no return value for this branch, so nil was returned. 
We can fix it by putting an expression on line 4. (Note it can also be inserted on line 5, but that is more confusing). 
=end