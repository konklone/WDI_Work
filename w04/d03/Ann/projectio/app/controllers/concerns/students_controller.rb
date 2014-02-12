class StudentsController < ApplicationController 

def index 
  @students = Student.all 
  render :index 
end 

def new 
  render :new 
end 

   def create
    #params is a hash with more features --> rails specific type of hash that is enhanced with security features
    whitelisted = params.require(:student).permit([:name, :project_description, :github_link])
    student = Student.new(whitelisted)

    student.save

    redirect_to "/students/#{student.id}"
  end

  def show 
      @student = Student.find(params[:id])
      render :show 
  end 

end 