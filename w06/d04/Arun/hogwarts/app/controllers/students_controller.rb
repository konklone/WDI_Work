class StudentsController < ApplicationController

  def index
  	@student = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  	@student = Student.new
  	@sorting_hat = ["Gryffindor", "Slytherin", "Ravenclaw", "Hufflepuff"]
  	render :new
  end

  def create
  	whitelisted = params.require(:student).permit(:name, :img_url)
  	@student = Student.new(whitelisted)
  end
end