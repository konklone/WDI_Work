class StudentsController < ApplicationController

  def index
    @students = Student.all
    render :index
  end

  def new
    render :new
  end

  def create
    # name = params[:name]
    # description = params[:description]
    # github = params[:github]
    # student = Student.new(name: name, project_description: description, github_link: github)
    # student.save
    whitelisted = params.require(:student).permit([:name, :project_description, :github_link])
    student = Student.new(whitelisted)
    student.save
    
    redirect_to "/students/#{student.id}"
  end

  def show
    logger.info "THE PARAM THAT WAS PASSED IS 3"
    @student = Student.find(params[:id])

    render :show
  end
end