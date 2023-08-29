arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]


# initiate empty hash
# iterate through each sub array

hashed_arr = arr.each_with_object({}) do |sub_arr, new_hsh|
  new_hsh[sub_arr[0]] = sub_arr[1]
end

p hashed_arr




# grab first element as hash key
# greb secon element as hash value


# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}