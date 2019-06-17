require 'test_helper'

class UserStocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_stock = user_stocks(:one)
  end

  test "should get index" do
    get user_stocks_url, as: :json
    assert_response :success
  end

  test "should create user_stock" do
    assert_difference('UserStock.count') do
      post user_stocks_url, params: { user_stock: { date_purchased: @user_stock.date_purchased, owned_stocks: @user_stock.owned_stocks, purchase_price: @user_stock.purchase_price, stock_id: @user_stock.stock_id, user_id: @user_stock.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_stock" do
    get user_stock_url(@user_stock), as: :json
    assert_response :success
  end

  test "should update user_stock" do
    patch user_stock_url(@user_stock), params: { user_stock: { date_purchased: @user_stock.date_purchased, owned_stocks: @user_stock.owned_stocks, purchase_price: @user_stock.purchase_price, stock_id: @user_stock.stock_id, user_id: @user_stock.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_stock" do
    assert_difference('UserStock.count', -1) do
      delete user_stock_url(@user_stock), as: :json
    end

    assert_response 204
  end
end
