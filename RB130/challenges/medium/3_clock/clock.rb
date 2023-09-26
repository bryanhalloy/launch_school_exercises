class AbsoluteMins
  attr_reader :abs_mins

  def initialize(mins)
    @abs_mins = mins
  end

  def +(mins)
    @abs_mins += mins
  end

  def -(mins)
    @abs_mins -= mins
  end

  def hour
    (@abs_mins % (60 * 24)) / 60
  end

  def minute
    @abs_mins % 60
  end
end

class Clock
  attr_reader :absolute_minutes

  def initialize(hours, minutes)
    @absolute_minutes = AbsoluteMins.new((hours * 60) + minutes)
  end

  def to_s
    hour_s = format('%02d', absolute_minutes.hour)
    minute_s = format('%02d', absolute_minutes.minute)
    "#{hour_s}:#{minute_s}"
  end

  def self.at(hours, minutes = 0)
    new(hours, minutes)
  end

  def +(mins)
    new_abs_mins = AbsoluteMins.new((absolute_minutes.hour * 60) +
    absolute_minutes.minute + mins).abs_mins
    Clock.new(new_abs_mins / 60, new_abs_mins % 60)
  end

  def -(mins)
    new_abs_mins = AbsoluteMins.new((absolute_minutes.hour * 60) +
    absolute_minutes.minute - mins).abs_mins
    Clock.new(new_abs_mins / 60, new_abs_mins % 60)
  end

  def ==(other_time)
    hour_bool = absolute_minutes.hour == other_time.absolute_minutes.hour
    minute_bool = absolute_minutes.minute == other_time.absolute_minutes.minute
    hour_bool && minute_bool
  end
end
