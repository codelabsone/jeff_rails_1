class StocksController < ApplicationController
  def edit
    @stock = Stock.find(params[:id])
  end

  def update
    @stock = Stock.find(params[:id])
    @stock.update(stock_params)
    redirect_to automotives_url
  end

  def new
    @stock = Stock.new
  end

  def create
    @stock = Stock.new(stock_params)
    @stock.save
    redirect_to automotives_url
  end

  def destroy
  @stock = Stock.find(params[:id])
  @stock.destroy
  redirect_to automotives_url
  end

  private

  def stock_params
    params.require(:stock).permit(:make, :model, :year, :color, :dealerprice, :saleprice, :profit, :inventorystatus, :url)
  end



end
