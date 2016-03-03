class Transaction < ActiveRecord::Base
  def self.balance
    where("transaction_type == 0").sum(:amount) - where("transaction_type == 1").sum(:amount)
  end

  def self.number
    count
  end

  def self.current_spend
    current_month = where("transaction_type == 1").select {|x| x.created_at.strftime("%B") == Date.today.strftime("%B")}
    current_month.reduce(0.0) {|sum, i| sum + i.amount}
  end

  def self.last_month_spend
    last_month = where("transaction_type == 1").select {|x| x.created_at.strftime("%B") == 1.month.ago.strftime("%B")}
    last_month.reduce(0.0) {|sum, i| sum + i.amount}
  end
end
