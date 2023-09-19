class Pet
  def initialize
    @size = 4
  end

  private
  def run_test
    puts @size
  end


end

class Dog < Pet


  def test
    run_test
  end

end

silva = Dog.new
silva.test
