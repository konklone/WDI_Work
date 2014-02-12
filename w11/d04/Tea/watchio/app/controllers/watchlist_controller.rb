class WatchlistController < ApplicationController
  def index
    @response = "hello"
  end

  def search
    encoded = URI.encode(params[:title])
    @response = JSON(HTTParty.get("http://www.omdbapi.com/?s={encoded}"))
  end
end
