class EntriesController < ApplicationController
   def index
      @instagrams = Entry.all
      render :index
   end

   def new
      render :new
   end

   def create
       new_gram = Entry.new
       new_gram.author = params[:author]
       new_gram.photo_url = params[:photo_url]
       new_gram.date_taken = params[:date_taken]

       new_gram.save

       redirect_to "/entries/#{new_gram.id}"
   end

   def show
       @instagram = Entry.find(params[:id])
       render :show
   end

   # def search
     
   # end

end