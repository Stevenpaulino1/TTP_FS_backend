class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.string :tickr_symbol
      t.integer :total_stock_shares
      t.integer :current_stock_price

      t.timestamps
    end
  end
end
