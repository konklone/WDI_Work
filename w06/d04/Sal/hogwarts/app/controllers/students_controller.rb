class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
    render :new
  end

  def create
    @student = Student.new(params[:name], params[:img_url])
    @student.save
  end
end