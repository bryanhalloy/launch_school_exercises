


def drop_while(arr)
  result_arr = arr.clone
  loop do
    return result_arr if result_arr.size == 0
    if !!yield(result_arr.first)
      result_arr.shift
      next
    else
      return result_arr
    end
  end
end
  

p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []