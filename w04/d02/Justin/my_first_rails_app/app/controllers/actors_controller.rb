class ActorsController < ApplicationController

	# def about
	# 	render :actor 
	# end

	# def film
	# 	render :film
	# end

	def show
		if params[:info] == "films"
			render :film
		else
			render :actor
		end
	end
end