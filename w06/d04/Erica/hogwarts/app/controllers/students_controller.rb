class StudentsController < ActionController

  def index
    @students = Student.all
    render :index 
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    render :new
  end
end
