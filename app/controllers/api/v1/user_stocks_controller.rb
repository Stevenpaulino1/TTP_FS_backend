module Api
  module V1
class UserStocksController < ApplicationController
  before_action :set_user_stock, only: [:show, :update, :destroy]

  # GET /user_stocks
  def index
    @user_stocks = UserStock.all

    render json: @user_stocks
  end

  # GET /user_stocks/1
  def show
    render json: @user_stock
  end

  # POST /user_stocks
  def create
    @user_stock = UserStock.new(user_stock_params)
    
    if @user_stock.save
      render json: @user_stock, status: :created
    else
      render json: @user_stock.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_stocks/1
  def update
    if @user_stock.update(user_stock_params)
      render json: @user_stock
    else
      render json: @user_stock.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_stocks/1
  def destroy
    @user_stock.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_stock
      @user_stock = UserStock.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_stock_params
      params.require(:user_stock).permit(:user_id, :stock_id, :date_purchased, :purchase_price, :owned_stocks, :tickr)
    end
end
end
end
