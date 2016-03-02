class Transaction < ActiveRecord::Base
  def self.balance
    deposits = where("transaction_type == 0").sum(:amount)
    withdrawals = where("transaction_type == 1").sum(:amount)
    deposits - withdrawals
  end
end
