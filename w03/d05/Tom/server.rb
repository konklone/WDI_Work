require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "peterlai", #your postgres username
  :password => "",
  :database => "wdinstagram_db"
)

require_relative './models/entry'

# Root
get '/' do
  erb :home
end

#Index
get '/entries' do
  @entries = Entry.all
  erb :entries
end

#New
get '/entries/new' do
  erb :new
end

#Create
post '/entries' do
  entry = Entry.new(params[:entry])
  entry.save
  redirect '/entries'
end

#Show
get '/entries/:entry_id' do
  @entry = Entry.find(params[:entry_id])
  erb :entry
end