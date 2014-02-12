class WelcomeController < ApplicationController
  
  def index
    render text: "<h2>Welcome To Project.io!</h2><p><br><a href='/students'>See all Students</a><br><a href='/students/new'>Add student</a></p>"
  end
end