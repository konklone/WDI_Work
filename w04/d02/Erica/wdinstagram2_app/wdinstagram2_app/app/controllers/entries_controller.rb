class EntriesController < ApplicationController 
  
  def index
    @entries = Entry.all
    render :index
  end

  def new
    render :new 
  end

  def create
  @new_entry = Entry.new(author: params[:author], photo_url: params[:photo_url], date_taken: params[:date_taken])
  @new_entry.save
  redirect_to "/entries"
  end

  def show
   @entry = Entry.find(params[:id])
   render :show
  end

end

