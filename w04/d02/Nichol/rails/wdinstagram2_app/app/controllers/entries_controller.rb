class EntriesController < ApplicationController

    def index 
        @entries = Entry.all
        render :index    
    end

    def new
        render :new
    end

    def create
        entry = Entry.new
        entry.name = params[:name]
        entry.photo_url = params[:photo_url]
        entry.date_taken = params[:date_taken]

        entry.save
        redirect_to "/entries"
    end

    def show
        @entry = Entry.find(params[:id])
        render :show
    end

end


# class ActorsController < ApplicationController

#   def index
#     @actors = Actor.all
#     render :index
#   end

#   def new
#     render :new
#   end

#   def create
#     actor = Actor.new
#     actor.name = params[:name]
#     actor.photo_url = params[:photo_url]
#     actor.birth_date = params[:birth_date]

#     actor.save

#     redirect_to "/actors"
#   end

#   def show
#     @actor = Actor.find(params[:id])
#     render :show
#   end

# end 