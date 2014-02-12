class WelcomeController < ApplicationController

  def index
    render text: "<h3>Welcome to Cuddl'r</h3><p><a href='/dogs'>See all dogs</a><br><a href='/dogs/new'>Add all dogs</a></p>"
  end

end