statement = "The Flintstones Rock"

a = statement.delete(' ').chars.uniq

count_hash = {}
a.each do |char|
  count_hash[char] = a.count(char)
end






p count_hash

