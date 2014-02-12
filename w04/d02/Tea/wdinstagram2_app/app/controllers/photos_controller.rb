class PhotosController < ApplicationController

  def index
    @photos = Photo.all
    render :index
  end

  def new
    render :new
  end

  def create
    photo = Photo.new
    photo.author = params[:author]
    photo.photo_url = params[:photo_url]
    photo.date_taken = params[:date_taken]

    photo.save

    redirect_to "/photos"
  end

  def show
    @photo = Photo.find(params[:id])
    render :show
  end

end 