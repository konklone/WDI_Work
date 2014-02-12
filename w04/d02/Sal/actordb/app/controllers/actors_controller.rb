class ActorsController < ApplicationController
	
	def index
		@actors = Actor.all 
		render :index
	end

	def new
		render :new
	end

	def create
		# name = params[:name]
		# photo = params[:photo_url]
		# birth_date = params[:birth_date]
		actor = Actor.new #(name: name, photo_url: photo, birth_date: birth_date)
		actor.name = params[:name]
		actor.photo_url = params[:photo_url]
		actor.birth_date = params[:birth_date]

		actor.save

		redirect_to '/actors'
	end

	def show
		@actor = Actor.find(params[:id])
		render :show
	end

end