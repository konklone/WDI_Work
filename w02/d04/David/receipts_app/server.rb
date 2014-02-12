require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get "/" do
  erb :index
end

get "/receipts" do
  erb :receipts
end

get "/receipts/new" do
  erb :new
end

post "/receipts" do
  info = Array.new
  info << params[:store]
  info << params[:product]
  info << params[:price]
  file = File.new("receipts.txt", "a+")
  file.puts info.join(",")
  file.close
  erb :receipts
end

get "/receipts/:id" do
  id_hash=Hash.new
  id = 0
  file = File.new("receipts.txt", "r")
    file.each do |line| 
      info = line.split(",") 
      id_hash[id] = info
      id +=1
    end 
    file.close
 @receipt_by_id = id_hash[params[:id].to_i]
 erb :receipts
end





