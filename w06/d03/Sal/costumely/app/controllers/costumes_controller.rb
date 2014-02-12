class CostumesController < ApplicationController
  def index
    @costumes = Costume.all
  end

  def new
    render :new
  end

  def create
    @costume = Costume.new(name: params[:name], image: params[:image])
    @costume.save

    redirect_to 'costumes_path'
  end

  def show
    @costume = Costume.find(params[:id])
    render :show
  end

  def edit 
  end

end