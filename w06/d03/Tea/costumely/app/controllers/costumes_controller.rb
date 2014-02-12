class CostumesController < ApplicationController

  def index
    @index = Costume.all
    render :index
  end

  def new
    @costume = Costume.new
    render :new
  end

  def create
    whitelisted = params.require(:costume).permit([:name, :image])
    @costume = Costume.new(whitelisted)

    @costume.save

    redirect_to "/costumes/#{costume.id}"
  end

  def show
    @costume = Costume.find(params[:id])
    render :show
  end

  def edit
     @costume = Costume.find(params[:id])
     render :edit
  end

  def update
    whitelisted = params.require(:costume).permit([:name, :image])
    @costume = Costume.find(params[:id])
    @costume.update_attributes(whitelisted)

    render :show
  end

  def destroy
    Costume.destroy(params[:id])
    redirect_to "/costumes/"
  end

end