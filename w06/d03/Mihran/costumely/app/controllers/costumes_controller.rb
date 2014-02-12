class CostumesController < ApplicationController

  def index
    @costumes = Costume.all
    render 'index'

  end

  def show
    @costume = Costume.find(params[:id])
    render 'show'
  end


  def new
    @costume = Costume.new
    render 'new'
  end


  def create

  end

  

  def update

  end



  def destroy 

  end






end

