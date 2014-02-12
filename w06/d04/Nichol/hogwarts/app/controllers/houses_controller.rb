class HousesController < ApplicationController

  def index
    @houses = House.all

  end

  def show
    @house = House.all.find_by id: params[:id]

  end

end