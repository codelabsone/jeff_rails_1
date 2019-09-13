class InventoryController < ApplicationController

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

  private

  def inventory_params
    params.require(:inventory).permit(:make, :model, :year, :color, :dealerprice, :saleprice, :profit, :inventorystatus)
  end

  def create
    @inventory = Inventory.new(inventory_params)
    @inventory.save
    redirect_to @inventory
  end

end
