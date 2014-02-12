require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'erb'

get '/' do 
  @kittens = ["http://PlaceKitten.com/#{rand(100..500)}/#{rand(100..500)}"]

 erb :index 

end  

post '/vote/:vote' do
  db_conn = PG.connect( :dbname => 'sandbox', :host => 'localhost' )
    url = params[:url]
    vote= params[:vote]

  if vote == "meow"
    is_meow_vote = true 
  else 
    is_meow_vote = false 
  end 

query = "INSERT INTO morning_kittens (url, is_meow) VALUES ('#{url}', '#{is_meow_vote}')"

db_conn.exec (query) 

db_conn.close 

redirect '/'


end 

