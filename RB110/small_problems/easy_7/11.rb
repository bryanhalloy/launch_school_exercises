def count_occurrences (input_arr)
  counts_hash = {}
  input_arr.uniq.each do |unique_element|
    counts_hash[unique_element] = input_arr.count(unique_element)
    puts "#{unique_element} => #{input_arr.count(unique_element)}"
  end








  # initiate output hash
  # find uniq elements
  #   iterate each through unique elements
  #   count occurance of each
  #   write key and value to output hash
  #output results
  nil
end







vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)