require 'pry'

class StaticController < ApplicationController

  def index
      @year = params[:year]
      render :index
  end
end

def woah
  render :woah
end
