class WelcomeController < ApplicationController

  def index
    render text: "<h3>Welcome to Project-io</h3><p> <a href='/students'>See all students</a><a href='/students/new'>Add student</a></p>"
  end

end