require "sinatra"
require "sinatra/reloader"
require "erb"
require "pry"

compliments = ["Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "Syphilis Rivendell for president",
  "Cardigan mumblecore Etsy, YOLO Marfa kogi art party"]

colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]

name = ["Nichol","Aby","Tom","Ernie","David","Raleigh","Tea",
  "Paris","Justin","Davis","Julie","Sal","Britt","Maria",
  "Mihran","Ann","Erica","Marco","Brad","McKenneth","Russell",
  "Arun","Kevin","Jeff","PJ","Peter"]

#define a route for home by using the get("/") do:
get ( "/" ) do
  #set instance variables
  #@name = name.sample
  @greeting = "What Uppppp!"
  @name = name.sample
  @compliment = compliments.sample # .sample will give a random element from the compliments array.
  @color = colors.sample # same as above
  erb :compliment
end
#each route is like a case stmtn
get ( "/:name" ) do
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

#to add via Terminal more compiments
#curl -v localhost:4567 -X post -F compliment= "you are sooo good looking"


# get "/" do
#   name = "Amazing"
#   "Is this working!" 
# end

# get( "/page1/:data_point" ) do

#   if params[:data_point] == "name"
#     @link_url = "  "
#     erb( :data )
#   else
#     @link_url = "/"
#     erb( :data )
#   end
#   post "/p1/ /" do
#   end
# end