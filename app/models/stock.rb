class Stock < ApplicationRecord
  has_many :UserStocks
  has_many :users, through: :UserStocks
end
