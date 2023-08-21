# Initialize variables
principal = nil

puts "Welcome to the LS Loan Calculator \n\n"

# Get the principal amount
loop do
  puts 'Please input the loan amount (the principal):'
  principal = gets.chomp.to_f

  if principal == 0
    puts 'Error: Please enter a non-zero number'
  else
    break
  end
end

# Get the APR
apr_prompt = <<-MSG
\nPlease input the Annual Percentage Rate (APR).
Put the percent rate as a number; e.g. for 6.3% type '6.3':
MSG
puts apr_prompt
interest_annual_num = gets.chomp.to_f

# Get the loan duration
puts "\nPlease input the loan duration, in months: "
duration_months = gets.chomp.to_f

# Perform the calculation
interest_monthly_value = interest_annual_num / 100 / 12
payment_monthly = principal *
                  (interest_monthly_value /
                  (1 - ((1 + interest_monthly_value)**(-duration_months))))
payment_monthly = payment_monthly.round(2)

# Output
output_msg_shell = <<-MSG
\nFor a loan of:
Principal: $#{principal}
APR:        #{interest_annual_num}%
Duration:   #{duration_months} months

..expect to pay:
Monthly:   $#{payment_monthly}
MSG

puts output_msg_shell
