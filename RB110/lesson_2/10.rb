orig_hash = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

answer = orig_hash.map do |hsh|
  hsh.map do |k,v|
    [k,v+1]
  end
    .to_h
end

p answer
p orig_hash

# map each sub hash
# return a array, conver to hash





# use map
# dont modify original array
# increment each integer by 1