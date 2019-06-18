# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Stock.destroy_all
UserStock.destroy_all

User.create(name: "Steven", email: "stevenpaulino1@hotmail.com", password: "123", balance:5000)

Stock.create(tickr_symbol: "GOOG", total_stock_shares:100,current_stock_price:25)
Stock.create(tickr_symbol: "AAPL", total_stock_shares:500,current_stock_price:20)
Stock.create(tickr_symbol: "MFST", total_stock_shares:5,current_stock_price:10)

UserStock.create(user_id:User.all.sample.id, stock_id:Stock.all.sample.id,date_purchased:6132019,purchase_price:Stock.all.sample.current_stock_price,  owned_stocks: 5, tickr:Stock.all.sample.tickr_symbol)
UserStock.create(user_id:User.all.sample.id, stock_id:Stock.all.sample.id,date_purchased:6132019, purchase_price:Stock.all.sample.current_stock_price, owned_stocks: 10, tickr:Stock.all.sample.tickr_symbol)
