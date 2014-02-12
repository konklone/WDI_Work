
require 'sinatra'
require 'sinatra/reloader'
require 'erb'
require 'pry'

compliments = ["Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "Syphilis Rivendell for president",
  "Cardigan mumblecore Etsy, YOLO Marfa kogi art party"
]
colors = ["#FFBF00", "#0080FF", "#01DF3A", "#FF0080"]



get "/" do
	@greeting = "What uppppppp"
	@compliment = compliments.sample
  @color = colors.sample
  erb ( :compliment )
end

get "/:name" do
	if params[:name].capitalize == "Tea"
		@greeting = "Oh hey #{params[:name].capitalize}.<br/>Happy Birthday!!"
	else
		@greeting = "Oh hey #{params[:name].capitalize}"
	end
	@compliment = compliments.sample
	@color = colors.sample
	erb ( :compliment )
end

post "/" do
	compliments << params[:compliment]
end