def palindromic_number?(input_int)
  input_int.to_s == input_int.to_s.reverse
end


puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
puts palindromic_number?(05) == true