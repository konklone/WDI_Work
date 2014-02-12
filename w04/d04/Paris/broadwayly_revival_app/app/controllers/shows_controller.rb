class ShowsController < ApplicationController

  def index
    @shows = Show.all
    render :index
  end

  def new
    render :new
  end

  def create

    whitelisted = params.require(:show).permit([:title, :year, :composer, :img_url])
    show = Show.new(whitelisted)

    show.save

    redirect_to "/shows/#{show.id}"
  end

  # def create
  #       student = Student.new(name: params[:name], project_description: params[:project_description], github_link: params[:github_link])
  #   student.save
  #   redirect_to "/students"
  # end

  def show
    @show = Show.find(params[:id])
    render :show
  end

end