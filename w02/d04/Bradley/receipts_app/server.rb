require 'sinatra'
require 'sinatra/reloader'


get("/") do 
  erb :index
end

get("/receipts/new") do
  erb :form
end

post("/receipts") do
# create new receipt, save it as CSV to receipts.txt and assign it unique ID
  info = []
  count = 0
  file = File.new("receipts.txt", "r")
  file.each do |line|
    count += 1
  end
  info.push(count, params[:store], params[:item], params[:price])
  file = File.new("receipts.txt", "a+")
  file.puts info.join(",")
  file.close
  erb :receipts
end

get("/receipts") do
  erb :receipts
end

get("/receipts/find") do
  erb :find
end

get("/receipts/results") do
#show particular receipt
  @id = params[:id]
  file = File.new("receipts.txt", "r")
  @result = "Sorry, a receipt with that ID number could not be found."
  file.each do |line|
    values = line.split(",")
    if values.include?(@id)
      @result = values
    end
  end
  erb :results
end
