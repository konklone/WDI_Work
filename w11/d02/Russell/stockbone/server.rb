require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'uri'

get '/' do
  send_file File.join(settings.public_folder, 'index.html')
end

get '/price' do
  content_type :json
  encoded = URI.encode(params[:q])
  JSON(HTTParty.get("http://dev.markitondemand.com/Api/Quote/json?symbol=#{encoded}"))
end
