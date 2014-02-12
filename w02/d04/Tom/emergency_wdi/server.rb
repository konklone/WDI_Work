require "sinatra"
require "sinatra/reloader" if development?
require "erb"

 compliments = ["Your instructors love you",
    "High five = ^5",
    "Is it Ruby Tuesday yet?",
    "Syphilis Rivendell for president",
    "Cardigan mumblecore Etsy, YOLO Marfa kogi art party"]

  colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]

  name = ["Nichol","Aby","Tom","Ernie","David","Raleigh","Tea","Paris","Justin","Davis","Julie","Sal","Britt","Maria","Mihran","Ann","Erica","Marco","Brad","McKenneth","Russell","Arun","Kevin","Jeff","PJ","Peter"]


get("/") do
  @greeting = "Whatt Upp"
  @compliment = compliments.sample
  @color = colors.sample
  erb :compliment
end

get ("/:name") do
    @greeting = "Oh hey #{params[:name].capitalize}!"
    if params[:name] == "tea"
      @compliment = "OMG Happy Birthday"
    else
      @compliment = compliments.sample
    end
      @color = colors.sample
    erb :compliment
end


 post ("/") do
  compliments << params[:compliment]
end

