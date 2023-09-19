require 'pry'

class BankAccount
  attr_reader :balance

  def initialize(account_number, client)
    @account_number = account_number
    @client = client
    @balance = 0
  end

  def deposit(amount)
    if amount > 0
      self.balance += amount
      "$#{amount} deposited. Total balance is $#{balance}."
    else
      "Invalid. Enter a positive amount."
    end
  end

  def withdraw(amount)
    if amount > 0 && self.balance - amount > 0
      success = true
      self.balance = balance - amount
    else
      success = false
    end

    if success
      "$#{amount} withdrawn. Total balance is $#{balance}."
    else
      "Invalid. Enter positive amount less than or equal to current balance ($#{balance})."
    end
  end

  def balance=(new_balance)
    if valid_transaction?(new_balance)
      @balance = new_balance
      true
    else
      false
    end
  end

  def valid_transaction?(new_balance)
    new_balance >= 0
  end
end

# Example

account = BankAccount.new('5538898', 'Genevieve')

                          # Expected output:
p account.balance         # => 0
p account.deposit(50)     # => $50 deposited. Total balance is $50.
p account.balance         # => 50
p account.withdraw(80)    # => Invalid. Enter positive amount less than or equal to current balance ($50).
                          # Actual output: $80 withdrawn. Total balance is $50.
p account.balance         # => 50


=begin

The core issue is that on line 24 we assign the variable `success` to the return of a setter method, which is poor practice to begin with but the issue is that the setter method passes to it as an argument self.balance, because the setter method bounds more tightly to objects than the integer subtraction method. 

Actually, the issue is that setter methods always return thier argument, regardless of the last line of the method. 


We are re-assigning the balance value on line 21 before we (attempt to) check if balance > amount. Thus, 

we are assigning a value adn then using the return value from that in another assingment, and then using that value (witch will be an number) as a truthy value like we would a boolean. Because the expression `(self.balance -= amount)` will always return a number, it will always be truthy. So when evaluated in a truthy contenxt, ie lin



=end
