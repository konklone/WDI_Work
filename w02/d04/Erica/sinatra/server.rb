require 'sinatra'
require 'sinatra/reloader'

compliments = ["Your instructors love you", "High five = ^5", "Is it Ruby Tuesday yet?",
  "Syphilis Rivendell for president", "Cardigan mumblecore Etsy, YOLO Marfa kogi art party"]
  colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]
name = ["Nichol","Aby","Tom","Ernie","David","Raleigh","Tea","Paris","Justin","Davis","Julie","Sal","Britt","Maria","Mihran","Ann","Erica","Marco","Brad","McKenneth","Russell","Arun","Kevin","Jeff","PJ","Peter"]
get ("/") do
  @compliments = compliments.sample
  @color= colors.sample
  erb :compliments
end

post ("/:name") do
  @greeting = "Oh hey, #{params[:name].capitalize}!"
  if param[:name] = "tea"
   @compliments = "OMG, HAPPY BIRTHDAY!"
  else @compliments = compliments.sample
  end
  @color = colors.sample
  erb :compliments
end

post ("/") do
  compliments.push(params[:compliments])
end


