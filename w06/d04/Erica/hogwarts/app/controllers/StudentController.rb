class StudentsController < ActionController

  def index
    @index = index
    render :index 
  end

  def show
    @student = Student.find(:id)
  end

end