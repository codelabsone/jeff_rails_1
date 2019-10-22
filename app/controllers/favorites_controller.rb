class FavoritesController < ApplicationController
  before_action :require_signin

    def create
      @stock = Stock.find(params[:stock_id])
      @stock.favorites.create!(user: current_user)
      redirect_to @stock, notice: "Thanks for Favoriting"
    end

    def destroy
      @stock = Stock.find(params[:stock_id])
      favorite = current_user.favorites.find(params[:id])
      favorite.destroy
      redirect_to @stock, notice: "Sorry you unfaved it!"
    end

  end
