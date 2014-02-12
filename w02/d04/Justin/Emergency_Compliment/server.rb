require "sinatra"
require "sinatra/reloader"

compliments = ["Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "Syphilis Rivendell for president",
  "Cardigan mumblecore Etsy, YOLO Marfa kogi art party"
]
colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]

get "/" do
	@greeting = "Yo!"
	@compliment = compliments.sample
	@color = colors.sample
	erb :compliment
end

get "/:name" do
	@name = params[:name].capitalize
	@greeting ="Oh hey #{@name}!"
	if params[:name] == "tea"
		@compliment = "OMG Happy Birthday!"
	else
		@compliment = compliments.sample
	end
	@color = colors.sample
	erb :compliment
end

post ("/") do 
	compliments.push(params[:compliment])
end