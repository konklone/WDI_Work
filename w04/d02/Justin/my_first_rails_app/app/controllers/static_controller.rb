class StaticController < ApplicationController

	def index
		@year = params[:year]
		render :index
	end

	def whoa
		render :whoa
	end
end