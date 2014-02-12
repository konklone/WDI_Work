class SearchesController < ApplicationController
   def search
         entries = Entry.all
   
         entries.each do |entry|
            if params[:search] == entry.author
               @response = entry
            elsif params[:search] != entry.author && !params[:search].nil?
               @no_entries = "That author does not have any entries."
            end
         end

      render :search
   end
end