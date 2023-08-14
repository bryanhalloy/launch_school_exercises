def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number


# It will return 1. The last line in the method defintion to be executed was the assignment line. Assignments always return the value being assigned, which in this case was 1. 

# WRONG It will return nil. The last method line is the if/else block. That block returns nil. 