require "sinatra"
require "sinatra/reloader"

compliment = ["Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "Syphilis Rivendell for president",
  "Cardigan mumblecore Etsy", "YOLO Marfa kogi art party"]

colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]

name = ["Nichol","Aby","Tom","Ernie","David","Raleigh","Tea","Paris","Justin","Davis","Julie","Sal","Britt","Maria","Mihran","Ann","Erica","Marco","Brad","McKenneth","Russell","Arun","Kevin","Jeff","PJ","Peter"]



get ("/") do
	@color = colors.sample
	# @name = ["Nichol","Aby","Tom","Ernie","David","Raleigh","Tea","Paris","Justin","Davis","Julie","Sal","Britt","Maria","Mihran","Ann","Erica","Marco","Brad","McKenneth","Russell","Arun","Kevin","Jeff","PJ","Peter"]
	@compliment = compliment.sample
	@greeting = "what uppp"
	erb :compliment
end

get ("/:name") do
	@greeting = "Oh SHIT #{params[:name].capitalize!}"
	if params[:name] == "tea"
		@compliment = "OMG Happy birthday"
	end

	@color = color.sample
	# @name = ["Nichol","Aby","Tom","Ernie","David","Raleigh","Tea","Paris","Justin","Davis","Julie","Sal","Britt","Maria","Mihran","Ann","Erica","Marco","Brad","McKenneth","Russell","Arun","Kevin","Jeff","PJ","Peter"]
	@compliment = compliment.sample
	erb :compliment
end

post ("/") do	
	compliment.push(params[:compliment])
end
