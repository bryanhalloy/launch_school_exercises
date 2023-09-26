def convert_to_base_8(n)
  n.to_s(8).to_i
end

con_proc = &method(:convert_to_base_8)

p [8, 10, 12, 14, 16, 33].map(&method(:convert_to_base_8)) # => [10, 12, 14, 16, 20, 41]