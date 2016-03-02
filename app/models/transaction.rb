class Transaction < ActiveRecord::Base
  def self.balance
    where("transaction_type == 0").sum(:amount) - where("transaction_type == 1").sum(:amount)
  end

  def self.number
    count
  end
end
