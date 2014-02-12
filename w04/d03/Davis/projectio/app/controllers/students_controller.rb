class StudentsController < ApplicationController
	def index
		render :index
	end

	def new
		render :new
	end

	def create
		# name = params[:name]
		# project_description = params[:project_description]
		# github_link = params[:github_link]

		# Student.create(name: name, project_description: project_description, github_link: github_link)
		w = params.require(:student).permit([:name, :project_description, :github_link])

		s = Student.new(w)
		s.save

		redirect_to("/students/#{Student.last.id}")
	end

	def show
		@student = Student.find(params[:id])

		render :show
	end
end