require 'sinatra'
require 'sinatra/reloader'
require 'pry'
     
get "/" do
  erb :index
end
     
post "/receipts" do
  info = Array.new
  info << params[:store]
  info << params[:product]
  info << params[:price]
  file = File.new("receipts.txt", "a+")
  file.puts info.join(",")
  file.close
end
     
get "/receipts" do
  erb :receipts
end
     
get "/receipts/new" do
  erb :new
end

     
get "/receipts/:id" do      
  erb :receipts
end



  