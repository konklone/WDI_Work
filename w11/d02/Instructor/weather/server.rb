require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'uri'

get '/' do
  send_file File.join(settings.public_folder, 'index.html')
end

get '/weather' do
  encoded = URI.encode(params[:q])
  JSON(HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=#{encoded}"))
end

get "/names/:name" do
  params[:name]
end