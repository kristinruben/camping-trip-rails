class SuppliesController < ApplicationController
  def index
    @title = "All Supplies:"
    @supplies = Supply.all
  end

  def show
    @campsite = Campsite.find(params[:id])
    @campers = @campsite.campers
  end
end
