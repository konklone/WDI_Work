class WelcomeController < ApplicationController

  def index
    render text: "<p>Hello World!<br><a href='/students'>See students</a><br><a href='/students/new'>Add student</a></p>"
  end

end