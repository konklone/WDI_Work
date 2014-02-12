class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @houses = House.find_by(params[:id])
  end

end