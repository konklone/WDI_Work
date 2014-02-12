class ActorsController < ApplicationController

#   def about
#     render :about
#   end
# end

# def 
# def film
#   render :film
# end


  def show
    if params[:info] == "films"
      render :film
    else
      render :about
    end
  end
  

end