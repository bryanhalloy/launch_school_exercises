def tricky_method(a_string_param, an_array_param)
  result_string = a_string_param + "rutabaga"
  result_array = an_array_param.union(["rutabaga"])
  [result_string,result_array]
end

my_string = "pumpkins"
my_array = ["pumpkins"]
result = tricky_method(my_string, my_array)
my_string = result[0]
my_array = result[1]




puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

