class CostumesController < ApplicationController

  before_action :find_costume, only: [:show, :edit, :update, :destroy]

  def index
    @costumes = Costume.all
  end

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new costume_params

    if @costume.save
      redirect_to costume_path @costume
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @costume.update_attributes costume_params
      redirect_to costume_path(@costume)
    else
      render :edit
    end
  end

  def destroy
    if @costume.destroy
      redirect_to costumes_path
    else
      render :edit
    end
  end

  private

  def costume_params
    params.require(:costume).permit(:name, :image)
  end

  def find_costume
    @costume = Costume.find params[:id]
  end
end
