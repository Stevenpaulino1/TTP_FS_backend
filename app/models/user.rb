class User < ApplicationRecord
  has_many :stocks
 has_many :stocks, through: :UserStocks
end
