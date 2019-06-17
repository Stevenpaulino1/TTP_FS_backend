class CreateUserStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_stocks do |t|
      t.integer :user_id
      t.integer :stock_id
      t.integer :date_purchased
      t.integer :purchase_price
      t.integer :owned_stocks

      t.timestamps
    end
  end
end
