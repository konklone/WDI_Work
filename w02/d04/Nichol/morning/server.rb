require "sinatra"
require "sinatra/reloader"
require "erb"
require "pry"

compliments = ["Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "Syphilis Rivendell for president",
  "Cardigan mumblecore Etsy, YOLO Marfa kogi art party"
]

people = ["Nichol","Aby","Tom","Ernie","David","Raleigh","Tea","Paris","Justin","Davis","Julie","Sal","Britt","Maria","Mihran","Ann","Erica","Marco","Brad","McKenneth","Russell","Arun","Kevin","Jeff","PJ","Peter"]

colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]
name = "undefined"

get "/" do
	@name = " "
	@color = colors.sample
	@compliment = compliments.sample
	@random_name = people.sample
	erb :compliment
end

get "/:name" do
	@name = params[:name]
	@color = colors.sample
	@random_name = people.sample
		
	if @name != "tea" then
		@compliment = compliments.sample
	else
		@compliment = "happy birthday!"
	end
	
	erb :compliment
end

post "/" do
	@color = colors.sample
	@compliment = params[:greeting]
	@random_name = people.sample
	erb :compliment
	@compliment << params[:greeting]
end
