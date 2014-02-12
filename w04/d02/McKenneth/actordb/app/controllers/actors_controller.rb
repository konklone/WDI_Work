class ActorsController < ApplicationController
  def index
    @actor = Actor.all   
    render :index
  end
 
 def new
  render :new
 end

 def create
  name = params[:name]
  date = params[:dob]
  url = params[:photo]
  Actor.create(name: name, dob: date, photo_url: url)
  redirect_to "/actors"
 end

 def show
  @actors = Actor.where(id: params[:id])
  render :show
 end
end