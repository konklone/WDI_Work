require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'pg'


get '/'do 
@random_kitty = "http://PlaceKitten.com/#{rand(100..400)}/#{rand(100..400)}"
erb :home
end

get'/vote/:vote'do
  db_conn = PG.connect(dbname: 'sandbox', host: "localhost")  
  url = params [:url]
  vote = params[:vote]
  if vote == "meow"
    is_meow = true
  else
    is_meow_vote = false
  end
query= "INSERT INTO morning_kittens (url,is_meow) VALUES"
query+= "('#{url}','#{is_meow_vote}');"
db_conn.exec(query)
db_conn.close
redirect '/'
end
