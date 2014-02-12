class DependenciesController < ApplicationController

  def show
    @depend = Dependency.find(params[:id])
    @student = @depend.student

    render :show
  end

  def edit
    @depend = Dependency.find(params[:id])
    @student = @depend.student

    render :edit
  end

  def update
    whitelisted = params.require(:depend).permit([:name, :dep_type, :is_gem, :documentation_link, :other_link])
    @depend = Dependency.find(params[:id])
    @depend.update_attributes(whitelisted)
    @student = @depend.student

    render :show
  end

  def destroy
    Dependency.destroy(params[:id])
    redirect_to "/students/#{params[:student_id]}"
  end

  def new
    @student = Student.find(params[:student_id])
    render :new
  end

  def create
    whitelisted = params.require(:depend).permit([:name, :dep_type, :is_gem, :documentation_link, :other_link])
    student = Student.find(params[:student_id])
    depend = student.dependencies.build(whitelisted)

    depend.save

    redirect_to "/students/#{student.id}"
  end

end