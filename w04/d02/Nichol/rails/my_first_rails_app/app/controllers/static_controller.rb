class StaticController < ApplicationController

    def index
        #binding.pry
        @year = params[:year]
        render :index
    end

    def woah
        render :woah
    end



end
