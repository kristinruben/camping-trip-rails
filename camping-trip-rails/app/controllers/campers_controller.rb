class CampersController < ApplicationController

  def index
    if params[:campsite_id].present?
      @campsite = Campsite.find(params[:campsite_id])
      @title = "Campers bunking in #{@campsite.name}"
      @campers = @campsite.campers
    else
      @title = "All Campers:"
      @campers = Camper.all
    end
  end

  def show
    @camper = Camper.find(params[:id])
    @supplies = @camper.supplies
  end
end
