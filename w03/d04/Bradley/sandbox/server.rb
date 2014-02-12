require 'sinatra'
require 'sinatra/reloader'
require 'pg'

get("/") do 
  random = rand(100..400)
  @url = "http://PlaceKitten.com/#{random}/#{random}"
  erb :index
end 

post("/vote/:vote") do
  db_conn = PG.connect( dbname: "sandbox")
  vote = params[:vote]
  if vote == "meow"
    vote = true
  else
    vote = false
  end 
  db_conn.exec("INSERT INTO morning_kittens (url, is_meow) VALUES ('#{params[:url]}', '#{vote}' );")
  db_conn.close
  redirect "/"
end