def print_in_box (string_to_print)
  dash_string = ''
  (string_to_print.length + 2).times {dash_string << '-'}

  space_string = ''
  (string_to_print.length + 2).times {space_string << ' '}

  top_line = '+' + dash_string + '+'
  second_line = '|' + space_string + '|'
  text_line = '| ' + string_to_print + ' |'

  boxed_msg = <<-STRNG
  #{top_line}
  #{second_line}
  #{text_line}
  #{second_line} 
  #{top_line}
  STRNG
  puts boxed_msg

end



print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box('Testing test testing')