class ImagesController < ApplicationController
	def index
		@images = Image.all
		render :index
	end
	def new
		render :new
	end
	def create
		@new_image = Image.new(author: params[:author], photo_url: params[:photo_url], date: params[:date])
		@new_image.save
		redirect_to "/images"
	end
	def show
		@post = Image.find(params[:id])
		render :show
	end


end