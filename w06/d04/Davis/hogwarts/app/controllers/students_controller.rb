class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
    racist_sorting_hat
    
    render :new
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      redirect_to student_path(@student.id)
    else
      render :new
    end
  end

  private

  def student_params
    params.require(:student).permit(:name, :img_url)
  end

  def racist_sorting_hat
    @house_id
  end

end