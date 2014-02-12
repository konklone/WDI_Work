require 'sinatra'
require 'pry'
require 'active_record'
require 'sinatra/reloader'

#the class Entry is now synched with the sandbox database
ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :host => "localhost",
    :username => "Julie",
    :password => "",
    :database => "sandbox"
    )

require_relative './models/wdi_entry'

#set homepage to index
get "/" do
  erb :index
end

#accesses each value of the entry object
get "/photos" do
  @entries = Entry.all
  erb :photo
end

#routes to form
get "/photos/new" do
  erb :new
end

#retrieves single line from the entry object
get "/photos/:id" do
  @entry = Entry.find(params[:id])
  erb :show
end

#passes in form params to create a new instance of the entry class
post "/photos" do
   entry = Entry.new(author: params[:author], photo: params[:photo], pdate: params[:date])
   entry.save
   redirect "/photos/#{entry.id}"
end