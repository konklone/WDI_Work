class StudentsController < ApplicationController

  def index
    @all = Student.all
    render :index
  end

  def new
    render :new
  end
  
  def create
    # whitelisted = params.require(:student).permit([:name, :project_description, :github_link])
    # new_student = Student.create(whitelisted)
    # due to security features if you are passing in the pseudo has for all date
    # it must be whitelisted. All inputs blacklisted by default to prevent
    # malicious activity

    name = params[:name]
    project = params[:project]
    github = params[:github]
    new_student = Student.create(name: name, project_description: project, github_link: github)
    redirect_to("/students/#{new_student.id}")
  end
  
  def show
    logger.info "the id number is #{params[:id]}"
    @student = Student.find(params[:id])
    render :show
  end

end