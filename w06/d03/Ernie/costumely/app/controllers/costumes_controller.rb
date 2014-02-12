class CostumesController < ApplicationController

  def index
    @costumes = Costume.all
    render :index
  end

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new
  end

  def edit
    
  end

  def update
    
  end

  def delete
    
  end

end