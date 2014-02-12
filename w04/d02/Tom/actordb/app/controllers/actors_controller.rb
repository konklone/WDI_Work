class ActorsController < ApplicationController

  # define the index action
  def index
    # returns all of the actors and store in the instance variable @actors
    @actors = Actor.all

    # you don;t have to explicitly state this, but at the beginning it can't hurt!
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