class CostumesController < ApplicationController
  def index
    render :index
  end

  def new
    @costume = Costume.new
    render :new
  end

  def create
    @costume = Costume.new(costume_params)

    if @costume.save
      redirect_to costume_path(@costume.id)
    else
      render :new
    end
  end

  def show
    get_costume
    render :show
  end

  def edit
    get_costume
    render :edit
  end

  def update
    if @costume.update_attributes(costume_params)
      redirect_to costume_path(@costume)
    else
      render :edit
    end
  end

  def destroy
    
  end

  private

  def costume_params
    params.require(:costume).permit(:name, :image_url)
  end

  def get_costume
    @costume = Costume.find(params[:id])
  end
end