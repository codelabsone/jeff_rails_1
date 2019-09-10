class AutomotivesController < ApplicationController
  def index
    @inventory = Inventory.all
  end

  def show
    @inventory = Inventory.find(params[:id])
  end
end
