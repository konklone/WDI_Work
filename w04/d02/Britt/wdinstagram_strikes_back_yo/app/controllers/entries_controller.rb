class EntriesController < ApplicationController
  helper_method :is_instagram_user, :strip_at

  def index
    @entries = Entry.all

    render :index
  end

  def new
    render :new
  end

  def create
    entry = Entry.new
    entry.author = params[:author]
    entry.photo_url = params[:photo_url]
    entry.date_taken = params[:date_taken]

    #entry.valid?
    entry.save!

    redirect_to "/show/#{entry.id}"
  end

  def show
    @entry = Entry.find(params[:id])

    render :show
  end

  def is_instagram_user?(author)
    author[0] == "@"
  end

  def strip_at(author)
    author[1..-1]
  end

end