# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

net_balances = []
[january, february, march].each do |month|
  net_balances.push(calculate_balance(month))
end

puts net_balances.sum

#Right now, you are just returning the balance of the last month, march. You are re-assigning the balance variable each time you iterate through the each. 
# Instead, you need to write unique values for each month and then sum them. 