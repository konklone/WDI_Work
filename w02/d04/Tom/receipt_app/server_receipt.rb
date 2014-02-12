require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'erb'


get "/" do
  erb :index
end

get "/receipts/new" do
  erb :forms
end

#this route inserts the new data into reciepts
post "/receipts" do

  ######### FILE WRITE #########
  #opens the file ... in read-write format
  file = File.new("receipts.txt", "a+")

  #get values out of params hash and put in variables/array
  response = params[:store_name] + ", " + params[:product_name] + ", " + params[:product_price]

  #put that string in the file
  file.puts response

  file.close

  ######### DISPLAY ERB #############
  erb :receipts

end

# get "/receipts" do

# end

#this route lists the data from recipts to the browser
get "/receipts/list" do

  #binding.pry

  #opens the file "reciepts.txt" in read-only format
  file = File.new("receipts.txt", "r")

  #takes each line in the file and does whatever is in the block
  file.each do |line|
    # this will return an array with 3 values
    values = line.split(",")
    puts "Store: #{values[0]}"
    puts "Product: #{values[1]}"
    puts "Price: #{values[2]}"

  end
  erb :receipts_list
  file.close

end









