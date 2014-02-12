require 'sinatra'
require 'active_record'
require 'pry'
require 'sinatra/reloader'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "rtaff2012",
  :password => "",
  :database => "sandbox"
)

require_relative './models/picture'


get "/wdinstagram/?" do
  @pictures = Picture.all

  erb :index
end


get "/wdinstagram/new" do
  erb :new
end


# Show (just one Picture)
get "/wdinstagram/:id" do
 

  @pictures = Picture.find(params[:id])
   
  erb :show

end

# GET /guest_book/1

# POST /guest_book
# Create a new entry in the `guest_book` hash
# Each entry should have a unique id

post "/wdinstagram/?" do
  #The ActiveRecord way
  pictures = Picture.new(author: params[:author], day: params[:day], url: params[:url])

  # entry.persisted?
  # => false
  pictures.save
  # entry.persisted?
  # => true
  redirect "/wdinstagram/#{pictures.id}"
  
end

# Expect params[:name] == new_name
put "/wdinstagram/:id" do

end
