require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host: "localhost",
  username: "brittlewis",
  password: "",
  database: "moma_db"
)

require_relative './models/painting'
require_relative './models/artist'

binding.pry

# Methods avail to views (sinatra feature)
helpers do
  
end

# Display all 
get '/?' do
  erb :index
end

# Display form
get '/new/:kind?' do
  if params[:kind] == "artist"
    erb :artist_form
  else
    erb :painting_form
  end
end

post '/new/:kind/?' do
  # Accept params, save to db
  #######    OR    #######
  # Bump back to form with error *shudders*
  redirect '/show/:kind/:id/?'
end

# Show particular painting/painter by id
get '/show/:kind/:id/?' do
  
end