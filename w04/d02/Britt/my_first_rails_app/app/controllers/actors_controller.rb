class ActorsController < ApplicationController

  # def about
  #   render :about
  # end

  # def musical
  #   render :musical
  # end

  def show

    case params[:info]
    when "about"
      render :about
    when "musical"
      render :musical
    end
    
  end

end