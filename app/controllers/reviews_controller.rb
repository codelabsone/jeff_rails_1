class ReviewsController < ApplicationController
  before_action :set_stock
  before_action :require_signin

  def index
    @reviews = @stock.reviews
  end

  def new
    @review = @stock.reviews.new
  end

  def create
    @review = @stock.reviews.new(review_params)
    @review.user = current_user
  if @review.save
    redirect_to stock_reviews_path(@stock),
                  notice: "Thanks for your review!"
  else
    render :new
  end
end

private

  def review_params
    params.require(:review).permit(:comment, :stars)
  end

  def set_stock
    @stock = Stock.find(params[:stock_id])
  end
end
