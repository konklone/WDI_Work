require 'sinatra'
require 'sinatra/reloader'
require 'erb'

compliments = ["Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "Syphilis Rivendell for president",
  "Cardigan mumblecore Etsy, YOLO Marfa kogi art party"
    ]
colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]
names = ["Nichol","Aby","Tom","Ernie","David","Raleigh","Tea","Paris","Justin","Davis","Julie","Sal","Britt","Maria","Mihran","Ann","Erica","Marco","Brad","McKenneth","Russell","Arun","Kevin","Jeff","PJ","Peter"]

get("/") do
  @name = names.sample
  @compliment= compliments.sample 
  @color = colors.sample 
  erb :index
end

get("/:id") do 

  if params[:id] == "tea"
    @name = params[:id]
    @compliment = "OMG HAPPY BIRFDAY!!"
  else
    @name = params[:id]
    @compliment= compliments.sample
  end
  @color = colors.sample
  erb :index
end

post("/") do
  new_compliment = params[:first]
  compliments << new_compliment
end