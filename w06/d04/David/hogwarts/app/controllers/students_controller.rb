class StudentsController < ApplicationController

  def index
    @students = Student.all
    @houses = House.all
  end

  def new
    @student = Student.new

    render :new
  end

  def create
    student = Student.new(student_params)
    sorting_hat(student)
    if student.save
      redirect_to student_path(student)
    else
      render :new
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  private 

  def student_params
      params.require(:student).permit(:name, :img_url)
  end

  def sorting_hat(student)
    house_id = rand(1..4)
    random_house = House.all.find(house_id)
    student.house = random_house
  end

end