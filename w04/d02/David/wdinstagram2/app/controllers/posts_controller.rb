class PostsController < ApplicationController

  def index
    @posts = Post.all
    render :index
  end

  def new
    
    render :new
  end

  def create
    name = params[:name]
    url = params[:photo_url]
    date = params[:date]
    post = Post.new(name: name, photo_url: url, date_taken: date)
    post.save

    redirect_to "/posts/#{post.id}"
  end

  def show
    @post = Post.find(params[:id])

    render :show
  end

end