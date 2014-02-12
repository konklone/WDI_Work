require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'


get '/' do
  @random_kitty = "http://PlaceKitten.com/#{Random.new.rand(100..500)}/#{Random.new.rand(100..500)}"
 erb :kitten
end

post '/vote/:vote' do
  db_conn = PG.connect(:dbname => 'sandbox', :host => 'localhost')
  url = params[:url]
  vote = params[:vote]

  if vote == "meow"
    is_meow_vote = true
  else
    is_meow_vote = false
  end

  query_str = "INSERT INTO morning_kittens (url, is_meow) VALUES"
  query_str+= "('#{url}', #{is_meow_vote});"

db_conn.exec(query_str)
db_conn.close

redirect '/'
end
