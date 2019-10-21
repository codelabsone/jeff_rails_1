class StocksController < ApplicationController
  before_action :require_signin, except: [:index, :show]
  before_action :require_admin, except: [:index, :show]

  def index
    stock = Stock.create!(stock_params)
    @stocks = Stock.all
  end

  def show
    @stock = Stock.find(params[:id])
    @buyers = @stock.buyers
    if current_user
      @current_favorite = current_user.favorites.find_by(stock_id: @stock.id)
    end
  end

  def edit
    @stock = Stock.find(params[:id])
  end

  def update
    @stock = Stock.find(params[:id])
    if @stock.update(stock_params)
      redirect_to @stock, notice: "Stock updated successfully"
    else
      render :edit
    end
  end

  def new
    @stock = Stock.new
  end

  def create
    @stock = Stock.new(stock_params)
    if @stock.save
      redirect_to @stock, notice: "Stock successfully created!"
    else
      render :new
    end
  end

  def destroy
  @stock = Stock.find(params[:id])
  @stock.destroy
  redirect_to stocks_url, alert: "Stock successfully deleted"
  end

  private

  def stock_params
    params.require(:stock).permit(:make, :model, :year, :color, :dealerprice, :saleprice, :profit, :inventorystatus, :url, :title, :content, uploads: [])
  end

end
