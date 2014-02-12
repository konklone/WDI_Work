class CostumesController < ApplicationController 

   def index
      @costumes = Costume.all
   end

   def new 
   end

   def create
      new_costume = Costume.new(name: params[:name], image: params[:image])
      new_costume.save

      redirect_to costume_path(new_costume)
   end

   def show
      @costume = Costume.find(params[:id])
   end

   def edit 
      @costume = Costume.find(params[:id])
   end
   
   def update

      update_costume = Costume.find_or_initialize_by(params[:id])
      update_costume.name = params[:name]
      update_costume.image = params[:image]

      if update_costume.save
         redirect_to redirect_to costume_path(@costume)
      else
         redirect_to edit_costume_path(@costume)
      end
   end

   def destroy
      @costume = Costume.find(params[:id])
      
      if @costume.destroy
         redirect_to new_costume_path
      else
         render :edit
      end
   end

end