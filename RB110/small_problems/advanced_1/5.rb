def rotate90(input_matrix)
  input_row_count = input_matrix.size
  input_column_count = input_matrix[0].size

  new_row_count = input_column_count
  new_column_count = input_row_count

  t_mat = []

  new_row_count.times do |new_row_index|
    new_row = []
    new_column_count.times do |new_col_index|
      new_row << input_matrix[-(new_col_index+1)][new_row_index]
    end
    t_mat << new_row
  end
  t_mat

  # return new matrix
end



matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2