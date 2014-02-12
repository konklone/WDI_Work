class CostumesController < ApplicationController

  def index
    @costumes = Costumes.all
  end

  def new
  end

  def create
    new_costume = Costume.new(name: params[:name], image: params[:image])
    new_costume.save

  redirect_to costume_path(new_costume)
  end

  def show
  @costume = Costume.find_by(params[:id])
  end

  def edit
  end
  
end
