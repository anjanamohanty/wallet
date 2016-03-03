require 'test_helper'

class TransactionTest < ActiveSupport::TestCase
  # The total amount of money in his/her account (this should be a method which is tested!)
  test "can correctly calculate account balance" do
    assert_equal Transaction.balance, 880.0

    Transaction.create!(transaction_type: 1, amount: 870.0, description: "Testing")
    assert_equal Transaction.balance, 10.0
  end

  # The total number of transactions ever
  test "can retrieve correct number of transactions" do
    assert_equal Transaction.number, 5

    Transaction.create!(transaction_type: 1, amount: 920.0, description: "Testing")
    assert_equal Transaction.number, 6
  end

  # The total amount spent in the current calendar month
  test "can retrieve correct spend for current month" do
    assert_equal Transaction.current_spend, 90.0

    Transaction.create!(transaction_type: 1, amount: 920.0, description: "Testing")
    assert_equal Transaction.current_spend, 1010.0
  end
  
  # The total amount spent in the prior calendar month
  # The total number of transactions in the current calendar month
  # The total number of transactions in the prior calendar month
  # The biggest expense in the current calendar month
  # The biggest expense ever
  # The name of the place/person where you have spent the most money (over all time)
end
