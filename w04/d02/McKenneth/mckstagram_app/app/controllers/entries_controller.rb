class EntriesController < ApplicationController
  def index
    @all = Entry.all
    render :index
  end

  def new
    render :new
  end
  def create
    author = params[:author]
    image = params[:image]
    date = params[:date]
    new_entry = Entry.create(author: author, image: image, date: date)
    redirect_to("/entries/show")
  end
  def show
    @entry = Entry.find(params[:id])
    render :show
  end
end