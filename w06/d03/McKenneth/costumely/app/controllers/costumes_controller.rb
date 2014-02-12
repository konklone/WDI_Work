class CostumesController < ApplicationController


  def index
    @costume = Costume.all
    render :index
  end
  def show
    @costume = Costume.find(params[:id])
    render :show
  end

  def new
    @costume = Costume.new
    render :new
  end

  def create
    @costume = Costume.new(costume_params)
    @costume.save
  end

  def edit
    @costume = Costume.find(params[:id])
    render :edit
  end

  def update
    if @costume.update_attributes(costume_params)
      redirect_to costume_path(@costume)
    else
      render :edit
    end
  end


end

private
  def costume_params
    params.require(:costume).permit(:name, :image)
  end