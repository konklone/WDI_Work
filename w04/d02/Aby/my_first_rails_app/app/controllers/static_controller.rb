
class StaticController < ApplicationController

	def index
		@year = params[:year]
		render :index
	end

	def woah
		render :woah
	end


end