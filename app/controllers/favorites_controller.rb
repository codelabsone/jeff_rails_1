class FavoritesController < ApplicationController
before_action :require_signin
before_action :set_stock

  def create
    @stock.favorites.create!(user: current_user)
    redirect_to @stock, notice: "Thanks for Favoriting"
  end

  def destroy
    favorite = current_user.favorites.find(params[:id])
    favorite.destroy
    redirect_to @stock, notice: "Sorry you unfavorited it!"
  end

private

  def set_stock
    @stock = Stock.find(params[:stock_id])
  end

end
