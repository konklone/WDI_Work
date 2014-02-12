class StudentsController < ApplicationController

  # GET /students
  def index
    @students = Student.all.sort_by! {|row| row.name }
    render :index
  end

  # GET /students/new
  def new
    render :new
  end

  # GET /students/:id
  def show
    @student = Student.find(params[:id])
    render :show
  end

  # POST /students
  def create
    whitelisted = params.require(:student).permit([:name, :project_description, :github_link])
    student = Student.new(whitelisted)

    student.save

    redirect_to "/students/#{student.id}"
  end

  ################## BELOW IS THE NEW STUFF #######################

  # GET /students/:id/edit
  def edit
    @student = Student.find(params[:id])
    render :edit
  end

  # PUT /students/:id
  def update
    whitelisted = params.require(:student).permit([:name, :project_description, :github_link])
    @student = Student.find(params[:id])

    @student.update_attributes(whitelisted)

    render :show
  end

  # DELETE /students/:id
  def destroy
    Student.destroy(params[:id])
    redirect_to "/students"
  end

end