class ActorsController < ApplicationController

	def index
		@actors = Actor.all
		render :index
	end

	def new
		render :new
	end

	def create
		actor = Actor.new(name: params[:name], photo_url: params[:photo_url], birth_date: params[:birth_date])
		actor.save
		redirect_to "/actors"
	end

	def show
		@actor = Actor.find_by_id(params[:id])
		render
	end
end