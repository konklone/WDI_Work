require 'sinatra'
require 'sinatra/reloader'
require 'erb'
require 'pry'


get ("/") do 
	erb :index
end

get ("/receipts/new") do
	erb :form
end

get ("/receipts") do
	file = File.new("receipts.txt", "r")
	receipt_array = []
	file.each do |line|
		info = line.split(",")
		@list = receipt_array.push(info)
end
	erb :receipts
end

post ("/receipts") do
	@store = params[:store]
	@product = params[:product]
	@price = params[:price] 
	
	info = Array.new
	info << params[:store]
	info << params[:product]
	info << params[:price]
	file = File.new("receipts.txt", "a+")
	file.puts info.join(",")
	file.close
end


get ("/receipts/:id") do

end