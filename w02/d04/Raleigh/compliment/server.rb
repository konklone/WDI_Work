require "sinatra"
require "sinatra/reloader"
require "erb"

compliments = ["Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "Syphilis Rivendell for president",
  "Cardigan mumblecore Etsy, YOLO Marfa kogi art party"
]

colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]

get("/") do
   @compliment = compliments.sample
   @color = colors.sample
   @student = "you"
   erb :compliment
end

get("/:student") do
   @color = colors.sample
   @student = params[:student].capitalize

   if params[:student].capitalize == "Tea"
      @compliment = "HAPPY BIRTHDAY!"
   else
      @compliment = compliments.sample
   end

   erb :compliment
end

post("/") do
   compliments.push(params[:compliment])
end