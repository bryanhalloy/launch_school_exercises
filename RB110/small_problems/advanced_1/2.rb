def star(dim)
  midrow_index = dim / 2
  dim.times do |row_index|
    if row_index == midrow_index
      puts '*' * dim
    else
      puts three_star((row_index - midrow_index).abs,dim)
    end
  end
end


def three_star(abs_rows_from_center, total_width)
  star_string = '*' + ' '*(abs_rows_from_center - 1) + '*' + ' '*(abs_rows_from_center - 1) + '*'
  star_string.center(total_width)
end

star(61)
