class HousesController < ApplicationController

  def index
    @houses = Houses.all
    render :index 
  end

  def show
    @house = House.find_by(params[:id])
    render :show 
  end

end