class EntriesController < ApplicationController
	def index
		@entries = Entry.all

		# explicit rendering
		render :index
	end

	def new
		render :new
	end

	def create
		name = params[:name]
		photo_url = params[:photo_url]
		date_taken = params[:date_taken]

		Entry.create(name: name, photo_url: photo_url, date_taken: date_taken)

		# note path
			# entries folder, not need to specify "show"
			# folder then params[:id]
		redirect_to("/entries/#{Entry.last.id}")
	end

	def show
		@entry = Entry.find(params[:id])
		render :show
	end
end