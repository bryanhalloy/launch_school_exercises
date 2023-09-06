module Gaitable
  def called_by
    if self.class.to_s == 'Noble'
      return self.title + ' ' + self.name
    else
      return self.name
    end
  end

  
  
  def walk
    puts "#{called_by} #{gait} forward"
  end
end




class Person
  attr_reader :name
  include Gaitable

  def initialize(name)
    @name = name
  end

  private

  def gait
    "strolls"
  end
end

class Cat
  attr_reader :name
  include Gaitable

  def initialize(name)
    @name = name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  attr_reader :name
  include Gaitable

  def initialize(name)
    @name = name
  end

  private

  def gait
    "runs"
  end
end


class Noble
  attr_accessor :name, :title
  include Gaitable
  
  def initialize(name, title)
    self.name = name
    self.title = title
  end

  def gait
    'struts'
  end

end








byron = Noble.new("Byron", "Lord")
byron.walk
# => "Lord Byron struts forward"
