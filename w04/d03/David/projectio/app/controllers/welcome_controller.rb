class WelcomeController < ApplicationController

  def index
    render text: "<p>Welcom to Project-io<br>
    <a href='/students'>See students</a><br>
    <a href='students/new'>Add student</a></p>"
  end

end