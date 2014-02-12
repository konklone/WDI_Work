class WelcomeController < ApplicationController

  def index
    render text: "<p>Welcome to Projectio!<br><a href='/students'>See all students</a><br><a href='/students/new'>Add student</a></p>"
  end

end
