class CostumesController < ApplicationController

  def index
    @costume = Costume.all
    render :index
  end

  def new
    @costume = Costume.new
    render :new
  end

  def create
    # costume params grabs everything from the form
    @costume = Costume.new(costume_params)
    @costume.save
  end

  def show
    @costume = Costume.find(params[:id])
  end
end