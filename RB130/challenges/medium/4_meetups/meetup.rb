require 'pry'
require 'date'

class Meetup
  DOWS = { monday: 1,
           tuesday: 2,
           wednesday: 3,
           thursday: 4,
           friday: 5,
           saturday: 6,
           sunday: 7 }
  TEENTH_DAYS = [13, 14, 15, 16, 17, 18, 19]

  attr_reader :initialized_date

  def initialize(y, m)
    @initialized_date = Date.civil(y, m, 1)
    @try_date = nil
    @dow = nil
    @descriptor = nil
  end

  def day(input_dow, input_descriptor)
    self.try_date = initialized_date
    self.dow = input_dow.downcase
    self.descriptor = input_descriptor.downcase

    result_day = nil

    loop do
      break if try_date.month != initialized_date.month

      if dow_matches? && descriptor_matches?
        result_day = try_date
        break
      end

      self.try_date = try_date.next_day
    end
    reset_temp_instance_vars
    result_day
  end

  private

  attr_accessor :try_date, :descriptor, :dow

  def reset_temp_instance_vars
    self.try_date = nil
    self.dow = nil
    self.descriptor = nil
  end


  def dow_matches?
    try_date.cwday == DOWS[dow.to_sym]
  end

  def descriptor_matches?
    total = 0
    descriptor_test_date = initialized_date
    loop do
      break if descriptor_test_date.month != initialized_date.month
      if descriptor == 'teenth'
        total += 1 if TEENTH_DAYS.include?(descriptor_test_date.day)
      else
        total += 1 if descriptor_test_date.cwday == DOWS[dow.to_sym]
      end
      descriptor_test_date = descriptor_test_date.next_day
    end

    count = 0
    descriptor_test_date = initialized_date
    loop do
      break if descriptor_test_date > try_date
      if descriptor == 'teenth'
        count += 1 if TEENTH_DAYS.include?(descriptor_test_date.day)
        
      else
        count += 1 if descriptor_test_date.cwday == DOWS[dow.to_sym]
      end
      descriptor_test_date = descriptor_test_date.next_day
    end

    case descriptor
    when 'first'
      count == 1
    when 'second'
      count == 2
    when 'third'
      count == 3
    when 'fourth'
      count == 4
    when 'fifth'
      count == 5
    when 'last'
      count == total
    when 'teenth'
      count >= 1
    end
  end
end
