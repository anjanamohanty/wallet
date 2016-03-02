class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :transaction_type
      t.decimal :amount
      t.text :description

      t.timestamps null: false
    end
  end
end
