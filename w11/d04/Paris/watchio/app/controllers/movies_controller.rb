class MoviesController < ApplicationController
  def search
    encoded = (params[:q]).gsub(" ", "+")
    resp = JSON.parse(HTTParty.get("http://www.omdbapi.com/?s=#{encoded}"))
    # binding.pry
    render json: resp
  end

  def 

  end 
end