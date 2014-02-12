
require 'pry'
class StaticController < ApplicationController

  def index
    @year = params[:year]
    render:index
  end
end

