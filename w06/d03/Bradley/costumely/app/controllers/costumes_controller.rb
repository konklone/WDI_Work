class CostumesController < ApplicationController

  def index
    @costumes = Costume.all
  end

  def show
    @costume = Costume.find(params[:id])
  end

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.create(costume_params)
    redirect_to costume_path(@costume.id)
  end

  def edit
    @costume = Costume.find(params[:id])
  end

  def update
    @costume = Costume.find(params[:id])
    @costume.update_attributes(costume_params)
    redirect_to costume_path(@costume.id)
  end

  def destroy
    redirect_to costumes_path
  end

  private 

  def costume_params
    params.require(:costume).permit(:name, :image)
  end


end