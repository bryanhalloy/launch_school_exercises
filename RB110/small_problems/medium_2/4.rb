def balanced?(input_string)
  open_parenth_count = 0
  closed_parenth_count = 0

  input_string.chars.each do |char|
    if char == "(" then open_parenth_count += 1 end
    if char == ")" then closed_parenth_count += 1 end
    return false if closed_parenth_count > open_parenth_count
  end
  open_parenth_count == closed_parenth_count

  
  # store counters
  # pass through string
  # apply some logic

end



p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false