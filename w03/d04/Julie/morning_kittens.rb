require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'


get ("/") do
  @num_1 = rand(100...400)
  @num_2 = rand(100...400) 
  erb :index
end


post ("/vote/:vote") do
db_conn = PG.connect( dbname: 'sandbox', host: 'localhost')
url = params[:url]
vote = params[:vote]

if vote == "meow"
  is_meow_vote = true
else
  is_meow_vote = false
end

db_conn.exec("INSERT INTO morning_kittens (url, is_meow) VALUES ('#{url}',#{is_meow_vote});")
db_conn.close 
redirect '/'
end
