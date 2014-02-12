require 'sinatra'
require 'sinatra/reloader'
require 'pry'

compliments = ["Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "Syphilis Rivendell for president",
  "Cardigan mumblecore Etsy, YOLO Marfa kogi art party"
]

colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]

names = ["Nichol","Aby","Tom","Ernie","David","Raleigh","Tea","Paris","Justin","Davis","Julie","Sal","Britt","Maria","Mihran","Ann","Erica","Marco","Brad","McKenneth","Russell","Arun","Kevin","Jeff","PJ","Peter"]


get '/' do 
  @color = colors.sample
  @greeting = "OHAI Favorite Person!"
  @compliments = compliments.sample
  erb :words
end

get '/ohnoes' do
  @color = colors.sample
  @name = names.sample
  @greeting = "OHAI #{@name}!"
  @compliments = compliments.sample
  erb :words

end

get '/:name' do
    @greeting = "OHAI #{params[:name]}!"
    @color = colors.sample
  if params[:name] == "tea"
    @name = "TEA"
    @compliments = "OMG IT'S YOUR BIRTHDAY!!"
  else
    @compliments = compliments.sample
  end
    erb :words
end

post '/' do
  compliments << params[:compliment]
end




