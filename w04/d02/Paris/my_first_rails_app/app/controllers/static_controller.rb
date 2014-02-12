require 'pry'
class StaticController < ApplicationController

# params is a hash with key value pairs that represent user input. 
  def index
    @year = params[:year]
    render :index
  end

  def whoa
    render :whoa
  end

end