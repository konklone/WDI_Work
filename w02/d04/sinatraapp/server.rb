require "sinatra"
require "sinatra/reloader"
require "erb"

compliments = ["Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "Syphilis Rivendell for president",
  "Cardigan mumblecore Etsy, YOLO Marfa kogi art party"]

colors = ["#FFBF00", "#0080FF", "#01DF3A", "#FF0080"]

names = ["Nichol","Aby","Tom","Ernie","David","Raleigh","Tea","Paris","Justin","Davis","Julie","Sal","Britt","Maria","Mihran","Ann","Erica","Marco","Brad","McKenneth","Russell","Arun","Kevin","Jeff","PJ","Peter"]


get "/" do
    @greeting = "What's up!"
    @compliments = compliments.sample
    @color = colors.sample
    erb :compliment
end

get "/compliment" do
  puts "hi"
    @compliments = compliments.sample
    @color = colors.sample
    erb :compliment
end

get "/:name" do
  @greeting = "Oh hey, #{params[:name].capitalize}."
    if params[:name] == "tea"
    @compliments = "OMG Happy Birthday!"
  else
    @compliments = compliments.sample
    end
    @color = colors.sample
    erb :compliment
end

post ("/") do
  compliments << params[:compliment]
end


# for post, use curl.
# curl -v localhost:4567/ -X -F POST compliment="You are SOOOO good looking"





