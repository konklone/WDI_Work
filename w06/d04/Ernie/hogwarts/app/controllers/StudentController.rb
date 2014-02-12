class StudentsController < ApplicationController

  def index
    @studens = Student.all
  end

  def show
    @student = Student.find_by(params[:id])
  end

end