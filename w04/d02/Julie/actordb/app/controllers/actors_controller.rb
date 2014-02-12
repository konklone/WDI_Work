class ActorsController < ApplicationController

  def index
    @actors = Actor.all
    render :index
  end

  def new
    render :new
  end

  def create
    Actor.create(name: params[:name], photo_url: params[:photo_url], birth_day: params[:birth_day])

    redirect_to "/actors"
  end

  def show
    @actor = Actor.find(params[:id])
    render :show
  end

end