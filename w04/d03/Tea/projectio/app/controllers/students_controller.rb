class StudentsController < ApplicationController

  def index
    @students = Student.all
    render :index
  end

  def new
    render :new
  end

  def create

    whitelisted = params.require(:student).permit([:name, :project_description, :github_link])
    student = Student.new(whitelisted)

    student.save

    redirect_to "/students/#{student.id}"
  end

  def show
    logger.info "the id number is #{params[:id]}"
    @student = Student.find(params[:id])
    render :show
  end



end 