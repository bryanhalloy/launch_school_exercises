books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

a = books.sort do |a_hash, b_hash|
  a_hash[:published].to_i <=> b_hash[:published].to_i
end

p a

# Or other method

b = books.sort_by do |hash_element|
  hash_element[:published].to_i
end

p b


