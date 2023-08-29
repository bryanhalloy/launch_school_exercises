def swap_name(input_string)
  names = input_string.split(' ')
  names[1] + ', ' + names[0]
end


p swap_name('Joe Roberts') == 'Roberts, Joe'