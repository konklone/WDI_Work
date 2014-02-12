require 'sinatra'
require 'sinatra/reloader'

pk1 = rand(100..400)
pk2 = rand(100..400)

pkURL = "http://placekitten.com/"+"#{pk1}"+"/"+"{pk2}"

get '/' do
  
  erb :layout
end

get '/vote/meow' do

end

get '/vote/not_meow' do

end

