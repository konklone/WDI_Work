class WelcomeController < ApplicationController
  def index
    render text: "<p>What up Dawg!</p><a href='/students'>GO</a>"
  end
end