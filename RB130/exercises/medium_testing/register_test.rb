require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register.rb'
require_relative 'transaction.rb'

class CashRegisterTest < Minitest::Test
  CASH_REGISTER_START = 1_000
  TRANS_1_COST = 75
  TRANS_1_PAID = 100
  TRANS_1_CHANGE = TRANS_1_PAID - TRANS_1_COST
  
  def setup
    @register = CashRegister.new(CASH_REGISTER_START)
    @transaction1 = Transaction.new(TRANS_1_COST)
  end

  def test_accept_money
    @transaction1.amount_paid = TRANS_1_PAID
    @register.accept_money(@transaction1)
    assert_equal(CASH_REGISTER_START + TRANS_1_PAID,@register.total_money)
  end

  def test_change
    @transaction1.amount_paid = TRANS_1_PAID
    assert_equal(TRANS_1_CHANGE,@register.change(@transaction1))
  end

  def test_give_receipt
    @transaction1.amount_paid = TRANS_1_PAID
    mock_output = StringIO.new("")
    assert_nil(@register.give_receipt(@transaction1, output: mock_output))
    assert_output("You've paid $#{TRANS_1_COST}.\n") do
      @register.give_receipt(@transaction1)
    end
  end

  def test_prompt_for_payment_amount_paid
    mock_input = StringIO.new("#{TRANS_1_COST}\n")
    mock_output = StringIO.new("")
    @transaction1.prompt_for_payment(input: mock_input, output: mock_output)
    assert_equal(TRANS_1_COST, @transaction1.amount_paid)
  end








end

