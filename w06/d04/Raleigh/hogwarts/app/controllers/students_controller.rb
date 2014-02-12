class StudentsController < ApplicationController

   def index
      @students = Student.all
   end

   def new

   end

   def create
      @new_student = Student.new(name: params[:name], img_url: params[:img_url], house_id: )

      # @new_student.save
      redirect_to student_path(@new_student)
   end

   def show
      @student = Student.find(params[:id])
   end

end