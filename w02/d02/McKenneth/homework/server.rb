require 'sinatra'
require 'sinatra/reloader'
require 'erb'

  get("/") do 
    erb :index
  end

  get("/:id") do
    if params[:id] == "cheese"
      @first = "Do you like cheese?!?!?!"
      @second = "Huh ? huh? huh?"
      @yes = "/awesome"
      @no = "/boring"
      erb :looper
    elsif params[:id] == "want_to"
      @first = "Do you want to know?!?!?!"
      @second = "it could be interesting..."
      @yes = "/hax"
      @no = "/boring"
      erb :looper
    elsif params[:id] == "game"
      @first = "Do you like games?!?!?!"
      @second = "Huh ? huh? huh?"
      @yes = "/awesome"
      @no = "/boring"
      erb :looper
    elsif params[:id] == "awesome"
      @first = "Awesome! That's what you are!"
      @second = "Want more?"
      @yes = "/hax"
      @no = "/boring"
      erb :looper
    elsif params[:id] == "boring"
      @first = "Boooooorrrriiiiinnnnnngggg"
      @second = "Try again?"
      @yes = "/hax"
      @no = "/"
      erb :looper
    elsif params[:id] == "hax"
      @first = "I'm totz def h4xin ur lappyz brah"
      @second = " R u 1337 5qu@d h4xor?? n0 n00bz"
      @yes = "/"
      @no = "/"
      erb :looper
    else
      erb :index
    end
  end
