require "sinatra"
require "sinatra/reloader"
require "pry"

get('/') do
erb :index
end

 
post ('/receipts')do
  @id=i
  @store = params[:store]
  @products = params[:products]
  @price = params[:price]
  info = Array.new
  info << params[:store]
  info << params[:product]
  info << params[:price]
  file = File.new("views/receipts.txt", "a+")
  file.puts info.join(",")
   i+=1
  file.close

end



get('/receipts/:id')do
params[:id]
erb :receipts_reader
end

 get('receipts/new')do
  erb :receipts_make
 end







