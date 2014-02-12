class ActorsController < ApplicationController

  def show
    if params[:info] == "films"
      render :film
    else
    render :about
  end
  end

  # def about
  #   render :about
  # end

  # def film
  #   render :film
  # end



end