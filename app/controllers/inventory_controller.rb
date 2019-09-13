class InventoryController < ApplicationController
  def index
    @inventory = Inventory.all
  end

  def show
    @inventory = Inventory.find(params[:id])
  end

  def edit
    @inventory = Inventory.find(params[:id])
  end

  def update
    @inventory = Inventory.find(params[:id])
    @inventory.update(inventory_params)
    redirect_to @inventory
  end

  def new
    @inventory = Inventory.new
  end

  def create
    @inventory = Inventory.new(inventory_params)
    @inventory.save
    redirect_to @inventory
  end

  private

  def inventory_params
    params.require(:inventory).permit(:make, :model, :year, :color, :dealerprice, :saleprice, :profit, :inventorystatus)
  end
end
