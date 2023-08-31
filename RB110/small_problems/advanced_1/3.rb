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


matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]