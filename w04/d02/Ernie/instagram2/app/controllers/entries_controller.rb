class EntriesController < ApplicationController
  
  def index
    @entries = Entry.all
    render :index
  end

  def new
    render :new
  end

  def create
    @entry = Entry.new
    entry.author = params[:author]
    entry.photos = params[:photos]
    entry.my_date = params[:date]
    entry.save
    redirect_to "index"
  end

  def show
    @entry = Entry.find(params[:id])
    render :show
  end
end 