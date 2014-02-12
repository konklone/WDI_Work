require "sinatra"
require "sinatra/reloader"
require "erb"
require "pry"

get ("/") do
  erb :index
end

get ("/receipts/new") do
  erb :form
end

post ("/receipts") do
  store = params["store"]
  product = params["product"]
  price = params["price"]
  file = File.new("receipts.txt", "a+")
  receipt_id = file.count + 1
  file.puts(" #{receipt_id},#{store},#{product},#{price}")
  file.close
  erb :form
end


get ("/receipts") do

file = File.new("receipts.txt", "r") 

@n = []

  file.each do |line|
      @n.push(line)
  end 

file.close

erb :receipt_maker

end


get ("/receipts/:id") do

  @id = params[:id].to_i - 1

@big_array = []

file = File.new("receipts.txt", "r") 

  file.each do |line|
    @big_array.push(line.split(","))
  
  end

  binding.pry

erb :receipt_id

end




# each line is a string with lots of commas. split at the commas. 

# * GET "/receipts" => print out all the generated receipts
# * GET "/receipts/:id" => show a particular receipt
