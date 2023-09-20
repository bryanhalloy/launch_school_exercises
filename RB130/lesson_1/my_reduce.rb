a = [1,2,3,4,5].reduce(10) {|sum, n| sum + 2*n } 
p a




def my_reduce(arr,agg_start = 0)
  agg_current = agg_start
  arr.size.times do |iter|
    agg_current = yield(agg_current, arr[iter])
  end
  agg_current
end



b = my_reduce([1,2,3,4,5],10) {|sum, n| sum + 2*n }

p b



c = my_reduce([1,2,3,4,5]) {|sum, n| sum + n }

p c



