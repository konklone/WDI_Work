class WelcomeController < ApplicationController

  def index
    render text: "<h3> Welcome to Project-io!</h3><p><a href='/students'>All students</a></p>"
  end

end