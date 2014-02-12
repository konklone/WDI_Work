class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  # GET /activities.json
  def index
    @movies = Movies.all
    render json: @movies
  end

  # # GET /activities/1.json
  # def show
  # end

  # # POST /activities.json
  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      render json: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # # PATCH/PUT /activities/1.json
  # def update
  #   if @activity.update(activity_params)
  #     head :no_content
  #   else
  #     render json: @activity.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /activities/1.json
  # def destroy
  #   @activity.destroy
  #   head :no_content
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:title, :plot, :poster)
    end
end