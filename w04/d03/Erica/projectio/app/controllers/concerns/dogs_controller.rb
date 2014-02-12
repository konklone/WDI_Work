class DogsController < ApplicationController
  
  def index
    @dogs = Dog.all
    render :index
  end

  def new
    render :new
  end

  def create
    @dog = Dog.new
    @dog.name = params[:name]
    @dog.photo_url = params[:photo_url]
    @dog.breed = params[:breed]
    @dog.birth_date = params[:birth_date]
    @dog.save
    redirect_to "index"
  end

  def show
    @dog = Dog.find(params[:id])
    render :show
  end
end