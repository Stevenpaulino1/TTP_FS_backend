class AddTickrToUserStocks < ActiveRecord::Migration[5.2]
  def change
    add_column :user_stocks, :tickr, :string
  end
end
