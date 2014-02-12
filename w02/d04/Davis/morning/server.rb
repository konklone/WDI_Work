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

people = ["Nichol","Aby","Tom","Ernie","David","Raleigh","Tea","Paris","Justin","Davis","Julie","Sal","Britt","Maria","Mihran","Ann","Erica","Marco","Brad","McKenneth","Russell","Arun","Kevin","Jeff","PJ","Peter"]

get '/' do 
	@color = colors.sample
	@compliment = compliments.sample
	erb :compliment
end

get '/:name' do 
	if params[:name].downcase == 'tea'
		@name = params[:name]
		@compliment = "OMG Happy Birthday!!!"
	elsif params[:name].downcase == 'shitty'
		@name = people.sample
		@compliment = compliments.sample
	else
		@name = params[:name]
		@compliment = compliments.sample
	end

	@color = colors.sample
	erb :compliment
end

post '/' do 
	compliments << params[:compliment]
end

