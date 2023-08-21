def print_in_box (string_to_print)
  if string_to_print.length > (80 - 4)
    puts 'Warning: String too long. Truncating string'
    string_to_print = string_to_print[0...(80 - 4)]
  end

  top_line = '+' + ('-' * (string_to_print.length + 2)) + '+'
  second_line = '|' + (' ' * (string_to_print.length + 2)) + '|'
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
print_in_box('this is a very very very very very very very very very very very very very very very very very very very very very very very very very very very long message ')