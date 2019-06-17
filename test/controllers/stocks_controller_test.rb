require 'test_helper'

class StocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stock = stocks(:one)
  end

  test "should get index" do
    get stocks_url, as: :json
    assert_response :success
  end

  test "should create stock" do
    assert_difference('Stock.count') do
      post stocks_url, params: { stock: { current_stock_price: @stock.current_stock_price, tickr_symbol: @stock.tickr_symbol, total_stock_shares: @stock.total_stock_shares } }, as: :json
    end

    assert_response 201
  end

  test "should show stock" do
    get stock_url(@stock), as: :json
    assert_response :success
  end

  test "should update stock" do
    patch stock_url(@stock), params: { stock: { current_stock_price: @stock.current_stock_price, tickr_symbol: @stock.tickr_symbol, total_stock_shares: @stock.total_stock_shares } }, as: :json
    assert_response 200
  end

  test "should destroy stock" do
    assert_difference('Stock.count', -1) do
      delete stock_url(@stock), as: :json
    end

    assert_response 204
  end
end
