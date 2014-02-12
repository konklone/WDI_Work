class EntriesController < ApplicationController

  def index
      @entries = Entry.all
    # @actors = Actor.all
      render :index
    # render :index
  end

  def new
     render :new
  end

  def create
     Entry.create(author: params[:author], photo_url: params[:photo_url], post_date: params[:post_date])
    # entry = Entry.new(params[:entry])
    # entry.save
    redirect_to '/entries'
    #  Entry.create(name: params[:name], photo_url: params[:photo_url], birth_day: params[:birth_day])

    # # redirect_to "/actors"
  end

  def show
    @entry = Entry.find(params[:id])
    # @actor = Actor.find(params[:id])
     render :show
  end

end