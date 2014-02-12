class ActorsController < ApplicationController
	def index
		render :index
	end

	def new
		render :new
	end

	def create
		name = params[:name]
		photo_url = params[:photo_url]
		birth_date = params[:birth_date]

		Actor.create(name: name, photo_url: photo_url, birth_date: birth_date)

		redirect("/actors")
	end

	def show
		@id = params[:id]

		render :show
	end
end

