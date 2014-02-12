require 'sinatra'
require 'active_record'
require 'pry'
require 'sinatra/reloader'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql", 
  :host => "localhost",
  :username => "sal",
  :password => "", 
  :database => "sandbox"
)

require_relative './models/entry'


get "/" do 
	erb :index
end

get "/instagrams" do 
	@instagrams = Instagram.all
  	erb :all
end

get "/instagrams/new" do 
	erb :new
end

get "/instagrams/:id" do 
	@instagrams = Instagram.find(params[:id])
    erb :show 
end

post "/instagrams" do 
	entry = Instagram.new(author: params[:author], url: params[:url], published: params[:published])
    entry.save
    redirect "/instagrams/#{entry.id}"
end



