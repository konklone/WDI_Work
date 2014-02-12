class CostumesController < ApplicationController
  
  def index
    @costumes = Costume.all
    render :index
  end 

  def create
     @costume = Costume.new(name: params[:name], photo_url: params[:photo_url])

    if @costume.save
      redirect_to costumes_path 
    else
      render :new
    end
  end

  def show
    @costume = Costume.find(params[:id])
    render :show
  end  

  def new
  end

  def edit
    @costume = Costume.find(params[:id])
    render :edit
  end

  def update
    if @costume.update_attributes(costume_params)
      redirect_to costumes_path(@costume)
    else
      render :edit
    end
  end

  def destroy
    if @costume.destroy
      redirect_to new_costume_path
    else
      render :edit
    end
  end

  
end  