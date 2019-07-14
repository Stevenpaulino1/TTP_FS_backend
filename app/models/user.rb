class User < ApplicationRecord
  has_secure_password
  has_many :UserStocks
 has_many :stocks, through: :UserStocks
end
