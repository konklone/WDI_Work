class CostumesController < ApplicationController
	def index
		@costumes = Costume.all
		render :index
	end

	def new
		render :new
	end

	def create
		@costumes = Costume.new(name: params[:name], image: params[:image])
		@costumes.save
		redirect_to costumes_path
	end

	def show
		@costumes = Costume.find(params[:id])
		render :show
	end

	def edit
		@costumes = Costume.find(params[:id])
	end

	def update

	end
end