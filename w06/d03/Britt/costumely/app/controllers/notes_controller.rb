class NotesController < ApplicationController

  def index; end

  def new
    @costume = Costume.find params[:id]
    @note = Note.new
  end

  def create; end

end