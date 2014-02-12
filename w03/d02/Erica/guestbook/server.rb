require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "evobersi",
  :password => "",
  :database => "sandbox"
  )

require_relative './models/entry'

get "/guest_book" do
  @entries = Entry.all
  erb :index
end


get "/guest_book/new" do
  erb :new
end

get "/guest_book/:id" do
  # select * from entries where id equals something
  @entry = Entry.find(params[:id])
  erb :show
end

post "/guest_book" do
  entry = Entry.new({comment: params[:comment], name: params[:name]})
  entry.save
  redirect "/guest_book/#{entry.id}"
end

# Expect params[:name] == new_name
put "/guest_book/:id" do

end

delete "/guest_book/:id" do

end