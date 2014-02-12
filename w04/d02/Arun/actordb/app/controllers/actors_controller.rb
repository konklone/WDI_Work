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
		# birth_date = params[:birth_date]
		# date = params[:date]
		@new_actor = Actor.new(name: params[:name], birth_date: params[:birth_date], birth_date: params[:birth_date])
		@new_actor.save
		redirect_to "/actors"
	end
	def show
		@actor = Actor.find(params[:id])
		render :show
	end
end