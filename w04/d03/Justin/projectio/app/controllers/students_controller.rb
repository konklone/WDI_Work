class StudentsController < ApplicationController
	def index
		@students = Student.all
		render :index
	end

	def new
		render :new
	end

	def create
		student = Student.new(name: params[:name], project_description: params[:project_description], github_url: params[:github_url])  
		student.save
		redirect_to "/students/#{student.id}"
	end

	def show
		@student = Student.find_by_id(params[:id])
		render :show
	end
end