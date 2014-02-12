class PostsController < ApplicationController

	def index
		@posts = Post.all 
		render :index
		#binding.pry
	end

	def new
		render :new
	end

	def create
		post = Post.new #(name: name, photo_url: photo, birth_date: birth_date)
		post.author = params[:author]
		post.photo_url = params[:photo_url]
		post.date_taken = params[:date_taken]

		post.save

		redirect_to '/posts'
	end

	def show
		@post = Post.find(params[:id])
		render :show
	end

end