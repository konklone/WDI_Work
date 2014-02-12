require 'sinatra'
require 'pry'
require 'active_record'
require 'sinatra/reloader'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "ecasilla",
  :password => "",
  :database => "instagram"
  )

require_relative './models/entry'

get'/'do
  erb :welcome
end

get '/gram'do 
  @entries = Entry.all
  erb :index
end

get'/gram/new'do
  erb :new
end

get "/gram/:id" do
  @entry = Entry.find(params[:id])
  erb :show
end

post "/gram" do
  entry = Entry.new(author: params[:author],photos: params[:photos],my_date: params[:date] )
  entry.save
  redirect "/gram/#{entry.id}"
end
