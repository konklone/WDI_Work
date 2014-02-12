class ActorsController < ApplicationController
  
  def index
    @actors = Actor.all
    render :index
  end

  def new
    render :new
  end

  def create
    actor = Actor.new
    actor.name = params[:name]
    actor.photo_url = params[:photo_url]
    actor.birth_date = params[:birth_date]
    actor.save
    redirect_to "/actors"
  end

  def show
    @actor = Actor.find(params[:id])
    render :show
  end
end