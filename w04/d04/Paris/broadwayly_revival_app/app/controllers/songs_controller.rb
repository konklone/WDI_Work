class SongsController < ApplicationController

  def index
    @show = Show.find(params[:show_id])
    @songs = Song.where(show_id: params[:show_id])
    render :index
  end

  def new
    render :new
  end

  def create

    whitelisted = params.require(:song).permit([:song_title, :embed_url])
    @song = Song.new(whitelisted)
    @show = Show.find(params[:show_id])
    @song.show_id = @show.id
    @song.save
    
    # redirect_to "/song/#{song.id}"
    redirect_to "/shows/#{@show.id}/songs/#{@song.id}" 
  end

  # def create
  #       student = Student.new(name: params[:name], project_description: params[:project_description], github_link: params[:github_link])
  #   student.save
  #   redirect_to "/students"
  # end

  def show
    @single_song = Song.where(id: params[:id])
    render :show
  end

end