require 'sinatra'
require 'sinatra/reloader'
require 'pry'

receipts = []

get "/" do
  @make = "/receipts/new"
  @print_one ="/receipts/1"
  @print_all = "/receipts"
  erb :index
end

get "/receipts/new" do
  @make = "/receipts/new"
  @print_one ="/receipts/1"
  @print_all = "/receipts"
  @receipt_text = "Create your receipt:"
  erb :forms
end

post "/receipts" do
  @make = "/receipts/new"
  @print_one ="/receipts/1"
  @print_all = "/receipts"
  count = %x{wc -l receipts.txt}.split[0].to_i
  purchase = []
  purchase << count + 1
  purchase << params[:store]
  purchase << params[:product]
  purchase << params[:price]
  file = File.new("receipts.txt", "a+")
  file.puts purchase.join(", ")
  file.close
  erb :forms
end

get "/receipts" do
  @make = "/receipts/new"
  @print_one ="/receipts/1"
  @print_all = "/receipts"
  @receipt_text = "Here are all of your receipts:"
  @string = ""
  file = File.new("receipts.txt", "r")
  file.each do |line|
  purchase = line.split(",") 
  @string += "#{purchase[0]} store #{purchase[1]} product #{purchase[2]} price #{purchase[3]}<br> " 
  end
  file.close
  erb :receipts
end

get "/receipts/:id" do
  @make = "/receipts/new"
  @print_one ="/receipts/1"
  @print_all = "/receipts"
  @receipt_text="Here is your receipt:"
  @hash = {}
  @id = params[:id].to_i
  file = File.new("receipts.txt", "r")
  file.each do |line|
  purchase = line.split(",") 
  @hash[purchase[0].to_i] = purchase
  end
  erb :single_receipt
end










