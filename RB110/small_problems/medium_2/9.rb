def bubble_sort!(input_array)
  loop do
    change_made = false
    input_array.each_with_index do |_element, index|
      next if index == 0
      case input_array[index - 1] <=> input_array[index]
      when 1
        input_array[index - 1], input_array[index] = input_array[index], input_array[index - 1]
        change_made = true
      end
    end
    break if !change_made
  end
  input_array
end





array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)