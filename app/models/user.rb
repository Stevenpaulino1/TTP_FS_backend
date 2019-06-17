class User < ApplicationRecord
  has_many :UserStocks
 has_many :stocks, through: :UserStocks
end
