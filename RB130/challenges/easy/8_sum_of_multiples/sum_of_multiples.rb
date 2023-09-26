class SumOfMultiples
  attr_reader :divisor_arr

  def initialize(*input_nums)
    @divisor_arr = input_nums.empty? ? [3, 5] : input_nums
  end

  def to(ceil_num)
    multiples_arr = [0]
    divisor_arr.each do |divisor|
      (1...ceil_num).each do |dividend|
        if dividend % divisor == 0
          multiples_arr << dividend
        end
      end
    end
    multiples_arr.uniq.sum
  end

  def self.to(ceil_num)
    new.to(ceil_num)
  end
end
