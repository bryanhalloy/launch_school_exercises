LOWERCASE_CHARS = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)


def letter_case_count (input_string)
  count_hash = {lowercase: 0, uppercase: 0, neither: 0}

  input_string.each_char do |char|
    if LOWERCASE_CHARS.include?(char)
      count_hash[:lowercase] += 1
    elsif LOWERCASE_CHARS.include?(char.downcase)
      count_hash[:uppercase] += 1
    else
      count_hash[:neither] += 1
    end
  end
  count_hash
end




# initialize return hash
# iterate over intput string, populating return hash
# return hash




p letter_case_count('abCdef 123')
p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }