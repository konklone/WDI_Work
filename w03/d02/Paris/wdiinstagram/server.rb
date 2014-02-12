require 'sinatra'
require "sinatra/reloader"
require 'active_record'
require 'pry'


# establishes connection with ActiveRecord
ActiveRecord::Base.establish_connection(
  :adapter => "postgresql", 
  :host => "localhost",
  :username => "Paris",
  :password => "",
  :database => "sandbox"
  )

require_relative './models/entry'

get "/wdi_instagram" do
  # @entries is an array
    @entries = Entry.all
  erb :index
end

get "/wdi_instagram/new" do
  erb :new
end

get "/wdi_instagram/:id" do
  @entry = Entry.find(params[:id])
  erb :show
end

post "/wdi_instagram" do
#   # everything in the parens is one argument
  entry = Entry.new({author: params[:author], photo: params[:photo], date_taken: params[:date_taken]})
  entry.save

  redirect "/wdi_instagram/#{entry.id}"
end








