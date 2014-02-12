class CostumesController < ApplicationController

  def index
    @costumes = Costume.all
  end

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new(costume_params)
    if @costume.save
      redirect_to costume_path(@costume)
    else
      render :new
    end
  end

  def show
    @costume = Costume.find(params[:id])
  end

  def edit
    @costume = Costume.find(params[:id])
  end

  def update
    @costume = Costume.find(params[:id])
    if @costume.update_attributes(costume_params)
      redirect_to costume_path(@costume)
    else
      render :edit
    end
  end

  def destroy
    @costume = Costume.find(params[:id])
    if @costume.destroy
      redirect_to costumes_path
    else
      render :show
    end
  end

  private 

  def costume_params
      params.require(:costume).permit(:name, :image)
  end

end