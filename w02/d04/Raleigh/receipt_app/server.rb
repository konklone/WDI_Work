require "sinatra"
require "sinatra/reloader"
require "pry"

get "/" do 
   erb :index
end

get "/receipts/new" do 
   erb :make_receipt
end

post "/receipts" do

   file = File.new("receipts.txt", "a+")
   # binding.pry

   line_num = 0
   File.open("receipts.txt") {|n| line_num = n.read.count("\n") + 1}

   entry = [line_num, params[:store],params[:item],params[:price]]
   file.puts entry.join(",")
   file.close

   # REDIRECT with Sinatra
   redirect "/receipts"
end

get "/receipts" do 
   @past_receipts = []
   file = File.open("receipts.txt", "r")

   file.each do |line|
      entry = line.split(",")
      last = "Store: #{entry[1]}", "Item: #{entry[2]}", "Price: $#{entry[3]}"
      @past_receipts.push(last)
   end
   binding.pry

   file.close

   erb :read_receipt
end
