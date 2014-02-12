class ActorsController < ApplicationController

  def index
    @actors = Actor.all
    render :index
  end

  def new
    render :new
  end

  def create
    name = params[:name]
    photo_url = params[:photo_url]
    dob = params[:date_of_birth]

    actor = Actor.new(name: name, photo_url: photo_url, birth_date: dob)
    actor.save
    
    redirect_to "/actors"
  end

  def show
    @actor = Actor.find(params[:id])

    render :show
  end

end