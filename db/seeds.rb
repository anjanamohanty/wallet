# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Transaction.create(transaction_type: 0, amount: 150.0, description: "Initial balance")
Transaction.create(transaction_type: 1, amount: 10.0, description: "Only Burger")
