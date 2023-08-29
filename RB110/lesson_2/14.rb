hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# iterate with map
returned_arr = hsh.map do |item, details|
  if details[:type] == 'fruit'
    details[:colors].map {|desc| desc.capitalize}
  else 
    details[:size].upcase
  end
end


p returned_arr



# access type
#   if element is fruit, return color capitalized
#   if element is veg, return size upcased




# return array
#   if element is fruit, return color capitalized
#   if element is veg, return size upcased
