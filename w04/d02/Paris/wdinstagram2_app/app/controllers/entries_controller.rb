class EntriesController < ApplicationController

  def index
    @entries = Entry.all
    render :index
  end

  def new
    render :new
  end

  def create
        entry = Entry.new(author: params[:author], photo_url: params[:photo_url], date_taken: params[:date_taken])
    entry.save
    redirect_to "/entries"
  end

  def show
    @entry = Entry.find(params[:id])
    render :show
  end

end

# actor.name = params[:name]
# etc.

# <!--   <li><a href="<%= "/shows/#{show.id}"%>"><img src= '<%= show.img_url %>'></a></li> -->