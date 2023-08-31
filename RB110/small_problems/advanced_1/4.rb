def transpose (input_matrix)
  input_row_count = input_matrix.size
  input_column_count = input_matrix[0].size

  new_row_count = input_column_count
  new_column_count = input_row_count

  t_mat = []

  new_row_count.times do |new_row_index|
    new_row = []
    new_column_count.times do |new_col_index|
      new_row << input_matrix[new_col_index][new_row_index]
    end
    t_mat << new_row
  end
  t_mat

  # return new matrix
end


p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]