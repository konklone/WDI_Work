require 'sinatra'
require 'sinatra/reloader'
require 'pry'

# Welcome page with links to make a receipt
get "/" do
  erb :index
end

# Form page for making new receipts
get "/receipts/new" do
  erb :form
end

# Create a new receipt with a unique ID
post "/receipts" do
  info = Array.new
  info << params[:store]
  info << params[:product]
  info << params[:price]
  file = File.new("receipts.txt", "a+")
  file.puts info.join(",")
  file.close
  erb :congrats
  last_id = receipts.values.max
  receipts[last_id + 1] = params[:receipts]

end

# Print out all the generated receipts
get "/receipts" do
  erb :receipts
end

# Show a particular receipt
get "/receipts/:id"  do
  id = params[:search].to_i
end