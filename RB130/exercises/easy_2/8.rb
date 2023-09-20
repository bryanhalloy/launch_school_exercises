




def max_by(arr)
  max_computed = nil
  max_element = nil
  for ele in 0...arr.size
    computed_val = yield(arr[ele])
    if !max_computed || computed_val > max_computed
      max_computed = computed_val
      max_element = arr[ele]
    end
  end
  max_element
end




p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil