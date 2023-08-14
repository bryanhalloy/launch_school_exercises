def name(input_arr)
  index = rand(input_arr.length)
  return input_arr[index]
end

def activity(input_arr)
  return input_arr.sample  #better way to sample from and array!
end

def sentence(input_name, input_activity)
  return "#{input_name} went #{input_activity} today!"
end


names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))