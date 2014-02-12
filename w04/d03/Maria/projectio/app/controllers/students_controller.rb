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
    # student = Student.new
    # student.name = params[:name]
    # student.project_description = params[:project_description]
    # student.github_link = params[:github_link]

    student.save

    redirect_to "/students"
  end

  def show
    @student = Student.find(params[:id])
    render :show
  end
end