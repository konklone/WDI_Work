require 'sinatra'
require 'pry'
require 'active_record'
require 'sinatra/reloader'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "nichol",
  :password => "",
  :database => "sandbox_db"
  )

require_relative './models/entry'

after do
  ActiveRecord::Base.connection.close
end
#index - display all pictures in the database
get "/" do
    @entries = Entry.all 
    erb :index
end

get "/new/?" do
    erb :new
end

#handle creating new photo
post "/photo_albumn/?" do
  
  entry = Entry.new(author: params[:author], photo: params[:photo], date_taken: params[:date_taken])
  #binding.pry
  entry.save

  redirect "/photo_albumn/#{entry.id}"

end

#handle showing individual photo
get "/photo_albumn/:id" do
    @entry = Entry.find(params[:id])
    erb :show
end