require 'sinatra'
require 'sinatra/reloader'

  compliments = ["Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "Syphilis Rivendell for president",
  "Cardigan mumblecore Etsy, YOLO Marfa kogi art party"
     ]

  colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]

  names = ["Nichol","Aby","Tom","Ernie","David","Raleigh","Tea","Paris","Justin","Davis","Julie","Sal","Britt","Maria","Mihran","Ann","Erica","Marco","Brad","McKenneth","Russell","Arun","Kevin","Jeff","PJ","Peter"]

#single quotations = NO string intrepolation, double = string interpolation

get ("/") do
    @compliment = compliments.sample  
    @colors = colors.sample 
    @greeting = "What up?"
    erb :compliment 
end 

get ("/:name") do 
  @greeting = "Oh hey, #{params[:name.capitalize]}!"
  @compliment = compliments.sample  
    if params[:name] == "tea"
        @compliment = "OMG Happy Birthday!" 
    end 
  @colors = colors.sample 
  erb :compliment 
end 

post ("/") do 
  compliments << params[:compliment] 
  #params always creates a string (to_s is redundant)
  #can also do compliment.push(params[compliment])
  erb :compliment 
  #to post a new complement = curl -v localhost:4567/ -X POST -F compliment="You're foxy!"
end 

