class WelcomeController < ApplicationController

  def index
    render text: "<h3>Welcome to Project-io</h3><p><br><a href='/students'>See students</a><br><a href='/students/new'>Add student</a></p>"
  end

end
