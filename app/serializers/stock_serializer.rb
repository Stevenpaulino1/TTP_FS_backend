class StockSerializer < ActiveModel::Serializer
  attributes :id, :tickr_symbol, :total_stock_shares, :current_stock_price
end
