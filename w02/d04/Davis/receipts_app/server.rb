require 'sinatra'
require 'sinatra/reloader'
require 'erb'
require 'pry'

# similar to guestbook

get '/' do 
	erb :welcome
end

get '/receipts/new' do 
	erb :form
end

receipts_hash = {1=>["store","product","price"]}

post '/receipts' do 
	last_id = receipts_hash.keys.max
	@array = [].push(last_id + 1,params[:store],params[:product],params[:price])
	receipts_hash[last_id + 1] = @array
	
	receipts = File.new("receipts.txt", "a+")
	receipts.puts @array.join(",")
	receipts.close

	erb :output
end

get '/receipts' do 
	erb :output
end

get '/receipts/specific' do 
	erb :specific
end

# get '/receipts/:id' do 
# 	# binding.pry
# 	erb :specific
# end
