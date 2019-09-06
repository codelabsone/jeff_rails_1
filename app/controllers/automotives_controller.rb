class AutomotivesController < ApplicationController
  def index
    @makes = ['Chrysler', 'Dodge', 'Jeep', 'Ram']
  end

  def show
    @inventory = Inventory.find(1)
  end
end
