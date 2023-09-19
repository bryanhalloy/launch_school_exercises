class ExpenseAccount
  def initialize
    @expenses = [3.4, 5.6, 7.9]  #we would add more through other methods
  end

  def <<(expense)
    @expenses << expense
  end

  def expenses_share
    expenses_total / 4
  end

  
  def expenses_last
    @expenses[-1]
  end

  private 
  def expenses_total
    @expenses.sum
  end
end


my_expenses = ExpenseAccount.new
p my_expenses.expenses_share
p my_expenses.expenses_total



