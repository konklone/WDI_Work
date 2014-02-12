class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  # GET /activities.json
  def index
    @activities = Activity.all
    render json: @activities
  end

  # GET /activities/1.json
  def show
  end

  # POST /activities.json
  def create
    @activity = Activity.new(activity_params)

    if @activity.save
      render json: @activity
    else
      render json: @activity.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /activities/1.json
  def update
    if @activity.update(activity_params)
      head :no_content
    else
      render json: @activity.errors, status: :unprocessable_entity
    end
  end

  # DELETE /activities/1.json
  def destroy
    @activity.destroy
    head :no_content
  end
    # def destroy
    #   if  @activity.delete(activity_params)
    #     head :no_content
    #   else
    #     render json: @activity.errors, status: :unprocessable_entity
    #   end
    # end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = Activity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_params
      params.require(:activity).permit(:title, :done)
    end
end




