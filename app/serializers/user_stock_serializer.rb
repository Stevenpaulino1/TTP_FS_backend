class UserStockSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :stock_id, :date_purchased, :purchase_price, :owned_stocks
end
