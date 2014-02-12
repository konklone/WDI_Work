require 'sinatra'
require 'sinatra/reloader'

#welcome screen
  get("/") do 
    erb :index
  end

#form for a new receipt
  get("/receipts/new") do 
    erb :receipt_make
  end

#creates new receipts
  post("/receipts") do
    file = File.new("views/receipts.txt", "a+")

    @id = file.readlines.count + 1
    @store = params[:store]
    @item = params[:item]
    @cost = params[:cost]
    
    input = []
    input << @id
    input << @store
    input << @item 
    input << @cost
    
    file.puts input.join(",")
    file.close
    erb :receipt_read
  end

#prints all receipts
  get("/receipts") do 
    erb :receipt_read
  end

#shows a particular receipt
  get("/receipts/:index") do
    erb :receipt_read
  end