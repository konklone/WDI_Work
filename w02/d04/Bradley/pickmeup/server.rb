require 'sinatra'
require 'sinatra/reloader'

colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]

compliments = ["Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "Syphilis Rivendell for president",
  "Cardigan mumblecore Etsy, YOLO Marfa kogi art party"]

names = ["Nichol","Aby","Tom","Ernie","David","Raleigh","Tea","Paris","Justin","Davis","Julie","Sal","Britt","Maria","Mihran","Ann","Erica","Marco","Brad","McKenneth","Russell","Arun","Kevin","Jeff","PJ","Peter"]

get("/:name") do 
  @name = params[:name]
  @color = colors.sample
  @compliment = compliments.sample

  if params[:name].downcase == "tea"
    @compliment = "Happy Birthday!!!"
  end

  erb :compliment

end

get("/feel/crappy") do
  @name = names.sample
  @color = colors.sample
  @compliment = compliments.sample

  erb :compliment

end


post("/") do
  new_compliment = params[:new_compliment]
  compliments << new_compliment
end

