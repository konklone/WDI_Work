class PhotosController < ApplicationController

	def index
		@photos = Photo.all
		render :index
	end

	def new
		render :new
	end

	def create
		photo = Photo.new(date_taken: params[:date_taken], name: params[:name], photo_url: params[:photo_url])  
		photo.save
		redirect_to "/photos/#{photo.id}"
	end

	def show
		@photo = Photo.find_by_id(params[:id])
		render :show
	end
end