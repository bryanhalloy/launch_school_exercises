class PerfectNumber
  def self.classify(num)
    e_msg = "Invalid object. Only Integers accepted."
    raise(StandardError, e_msg) unless num.instance_of?(Integer)
    e_msg = "Invalid number. Negative numbers not accepted."
    raise(StandardError, e_msg) unless num >= 0
    return 'deficient' if num == 0

    case aliqiot_sum(num) <=> num
    when -1 then 'deficient'
    when 0 then 'perfect'
    when 1 then 'abundant'
    end
  end

  class << self
    private

    def aliqiot_sum(num)
      factors_exclusive = []
      fact_check = 1
      loop do
        break if fact_check >= num
        if num % fact_check == 0
          factors_exclusive << fact_check
        end
        fact_check += 1
      end
      factors_exclusive.sum
    end
  end
end
