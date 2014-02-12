class EntriesController < ApplicationController

  def index
    @entries = Entry.all
    render :index
  end

  def new
    render :new
  end

  def create
    entry = Entry.new
    entry.name = params[:name]
    entry.photo_url = params[:photo_url]
    entry.birth_date = params[:birth_date]

    entry.save

    redirect_to "/entries"
  end

  def show
    @entry = Entry.find(params[:id])
    render :show
  end

end 