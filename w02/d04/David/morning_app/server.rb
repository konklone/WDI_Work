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

person = ["Nichol","Aby","Tom","Ernie","David","Raleigh","Tea","Paris","Justin","Davis","Julie","Sal","Britt","Maria","Mihran","Ann","Erica","Marco","Brad","McKenneth","Russell","Arun","Kevin","Jeff","PJ","Peter"]

get "/" do 
  @compliment = compliments.sample
  @color = colors.sample
  erb :index
end

post "/" do
  compliments << params[:compliment]
end

get "/:name" do
  binding.pry
  @greeting = "Oh hey #{params[:name].capitalize}!"
  if params[:name] == "tea"
    @compliment = "OMG Happyyy BDayyy"
  else
    @compliment = compliments.sample
  end
  @color = colors.sample
  erb :index
end

get "/link/crappy"

end