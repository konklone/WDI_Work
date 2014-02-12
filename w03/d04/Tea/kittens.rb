require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'

get '/' do
  @kitten_pic = "http://PlaceKitten.com/#{rand(100..400)}/#{rand(100..400)}"
  erb :home
end

post '/vote/:vote' do
  db_conn = PG.connect(dbname: 'sandbox')
  url = params[:url]
  vote = params[:vote]

  if vote == "meow"
    is_meow_vote = true
  else
    is_meow_vote = false
  end

  query_str = "INSERT INTO morning_kittens(url, is_meow)"
  query_str += " VALUES('#{url}', #{is_meow_vote});"

  db_conn.exec( query_str )
  db_conn.close

  redirect '/'
end