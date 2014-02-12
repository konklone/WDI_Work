class StudentsController < ApplicationController

  def index
    @students = Student.all
    render :index
  end

  def new
    render :new
  end

  def show
    @student = Student.find(params[:id])
    render :show
  end

  def create

    redirect "/students"
  end

end