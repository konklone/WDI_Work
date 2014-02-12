class ActorsController < ApplicationController

  # def paul
  #   render:paul
  # end

  # def film
  #   render:film
  # end
  def show
    if params[:info]=="film"
    render :paul
  else
    render :paul
    end
  end
end