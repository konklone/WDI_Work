class StudentsController < ApplicationController
  # GET /students
  def index
    @students = Student.all
    render :index
  end

  # GET /students/new
  def new
    render :new
  end

  # GET /students/:id
  def show
    logger.info "THE PARAM THAT WAS PASSED IS #{params[:id]}"
    @student = Student.find(params[:id])
    render :show
  end

  # POST /students
  def create

    whitelisted = params.require(:student).permit([:name, :project_description, :github_link])
    student = Student.new(whitelisted)

    student.save

    redirect_to "/students/#{student.id}"
  end

end


# class StudentsController < ApplicationController

# 	def index
# 		@students = Student.all 
# 		render :index
# 	end

# 	def new
# 		render :new
# 	end

# 	def create
# 		student = Student.new 
# 		student.name = params[:name]
# 		student.project_description = params[:project_description]
# 		student.github_link = params[:github_link]

# 		student.save

# 		redirect_to '/students'
# 	end

# 	def show
# 		@student = Student.find(params[:id])
# 		render :show
# 	end

# end