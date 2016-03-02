require 'test_helper'

class TransactionTest < ActiveSupport::TestCase
  test "can correctly calculate account balance" do
    assert_equal Transaction.balance, 930.0

    Transaction.create!(transaction_type: 1, amount: 920.0, description: "Testing")
    assert_equal Transaction.balance, 10.0
  end
end
