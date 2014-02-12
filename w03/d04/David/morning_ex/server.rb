require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'


get "/" do
  rand_num = rand(100..400)
  @url = "http://PlaceKitten.com/#{rand_num}/#{rand_num}"

  erb :index
end

post "/vote/:vote" do
  if params["vote"] == "meow"
    is_meow = true
  elsif params["vote"] == "not_meow"
    is_meow = false
  end
  url = params["url"]
  binding.pry
  query_str = "INSERT INTO morning_kittens (url, is_meow) "
  query_str += "VALUES ('#{url}', #{is_meow})"

  db_conn = PG.connect( dbname: "sandbox")
  db_conn.exec( query_str )
  db_conn.close

  redirect '/'
end
