class StudentController < ApplicationController
  
  def index
  	@students = Student.all
  	render :index
  end

  def new 
  	render :new
  end

  def show
  	logger.info "THE PARAM THAT WAS PASSED IS #{params[:id]}"
  	@student = Student.find(params[:id])
  	render :show
  end

  def create
  	student = Student.new(params[:student])
  	student.save
  	redirect_to "/students/#{student.id}"
  end
end