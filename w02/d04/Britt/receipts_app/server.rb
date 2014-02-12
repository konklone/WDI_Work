require 'sinatra'
require 'sinatra/reloader'
require 'pry'

# Receipts.io server

# GET "/" => "Welcome to Receipts.io, yo!"
get "/" do
	erb :index
end

# GET "/receipts/new" => form for new receipts
# 	* inputs for store, product, price
get "/receipts/new" do
	erb :form
end

# POST "/receipts" => create a new receipt
# save it as a CSV to receipts.txt and assign unique id)
post "/receipts" do
	@item_info = []
	@item_info << params[:store]
	@item_info << params[:product]
	@item_info << params[:price]

	erb :receipt_maker
end

# GET "/receipts" => print out all the generated receipts
get "/receipts" do
	erb :receipt_reader
end

# GET "/receipts/:id" => show a particular receipt
get "/receipts/:id" do
	@id = params[:id]
	erb :id_receipt_reader
end