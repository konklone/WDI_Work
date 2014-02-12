class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @students = Student.find(params[:id])
  end
  def new
    @students = Student.new
    render :new
  end

  def create
    @students = Student.new(student_params)
    if @students.save
      redirect_to student_path(@student.id)
    else
      render :new
    end
  end

  private
  def student_params
    params.require(:students).permit(:name, :img_url)
  end

end