class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def positive_balance?
    balance >= 0
  end
end


Ben is correct. balance is a method call to the getter (reader) method, which returns the value of the instance varaible @balance. By using attr_reader :balance the code automatically creates a getter method for the instance variable @balance. 

