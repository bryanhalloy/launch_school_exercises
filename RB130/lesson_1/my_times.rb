#Monkey patched code:
class Integer
  def my_times
    current_iter = 0
    while current_iter < self do
      yield(current_iter)
      current_iter += 1
    end
    self
  end
end






5.my_times do |num|
  puts num.to_s + "!!!"
end
