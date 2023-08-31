def letter_percentages(input_string)
  counts_hash = {lowercase: 0, uppercase: 0, neither: 0}
  input_string.chars.each do |char|
    if ('a'..'z').include?(char)
      counts_hash[:lowercase] += 1 
    elsif ('A'..'Z').include?(char)
      counts_hash[:uppercase] += 1
    else 
      counts_hash[:neither] += 1
    end
  end
  total_chars = counts_hash.values.sum * 1.0
  counts_hash.each {|k,v| counts_hash[k] = 100 * counts_hash[k] / total_chars }
  counts_hash

  # make a lookup of chars of each type
  # iterate through the string, 
  #   checking against list and +1 the appropriate hash
  # count the number of strings
  # go in an re-assign values of the has to be percents instead of total numbers
  # resturn HASH
end






p letter_percentages('abCdef 123')
p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }