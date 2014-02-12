class StudentsController < ApplicationController

  def index
    @students = Student.all
    render :index
  end

  def show
    @student = Student.find(:id)

    render :show
  end

  def new
  end

  def create
  end

end