class StudentsController < ApplicationController
  # helper_method:

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

    if student.valid?
      student.save!
    else
      redirect_to '/students/new'
    end

    redirect_to "students/#{student.id}"
  end

  def show
    @student = Student.find(params[:id])

    render :show
  end

end