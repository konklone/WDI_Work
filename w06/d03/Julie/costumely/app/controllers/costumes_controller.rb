class CostumesController < ApplicationController
 

   def new
    @costume = Costume.new()
     render :new
   end

  def index
    @costumes = Costume.all
    render :index
  end

  def show
    @costume =  Costume.find(params[:id])
  end

 def create
    @costume = Costume.create(user_params)

    if @costume.save
      redirect_to costume_path(@costume)
    else
      render :new
    end

end

def edit
end

private

  def user_params
    params.require(:costume).permit(:name, :photo_url)
  end

end