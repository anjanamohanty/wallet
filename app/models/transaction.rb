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

  def self.current_month_number
    current_month = where("transaction_type == 1").select {|x| x.created_at.strftime("%B") == Date.today.strftime("%B")}
    current_month.count
  end

  def self.last_month_number
    last_month = where("transaction_type == 1").select {|x| x.created_at.strftime("%B") == 1.month.ago.strftime("%B")}
    last_month.count
  end

  def self.current_biggest
    current_month = where("transaction_type == 1").select {|x| x.created_at.strftime("%B") == Date.today.strftime("%B")}
    current_month.sort! {|a,b| a.amount <=> b.amount}
    current_month.last
  end
end
