class ActorsController < ApplicationController
   def index # Action
      @all_actors = Actor.all

      render :index
   end

   def new
      render :new
   end

   def create
      new_actor = Actor.new
      new_actor.name = params[:name]
      new_actor.photo_url = params[:photo_url]
      new_actor.birth_date = params[:birth_date]
      new_actor.save

      redirect_to '/actors'
   end

   def show
      @a_actor = Actor.find(params[:id])
   end

end