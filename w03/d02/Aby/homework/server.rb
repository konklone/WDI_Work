require 'sinatra'
require 'sinatra/reloader'
require 'active_record'


ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "ezpawn",
  :password => "1234",
  :database => "insta"
  )

require_relative './models/entry'
# Create
# Read
# Update
# Destroy

get "/wdinstagram/new" do
  erb :new
end

get "/wdinstagram" do
  @entries = Entry.all
  erb :index
end

get "/wdinstagram/:id" do
  @entry = Entry.find(params[:id])
  erb :show
end

# Each entry should have a unique id

post "/wdinstagram" do
  entry = Entry.new(name: params[:name], url: params[:url], date_taken: params[:date_taken])
  entry.save
  redirect "/wdinstagram/#{entry.id}"
end

# Expect params[:name] == new_name
put "/wdinstagram/:id" do

end

delete "/wdinstagram/:id" do
 
end