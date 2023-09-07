class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end



tv = Television.new
# Instantaites a new Television object

tv.manufacturer
# Error, no instance method


tv.model
# Return value for model method


Television.manufacturer
# Return value for manufacturer class method



Television.model
# Error, no such class method