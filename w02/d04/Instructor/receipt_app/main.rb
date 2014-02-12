require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :welcome
end

get '/receipts/new' do
  erb :form
end

post '/receipts' do

    # Count the number of lines in the file to figure out what id we should assign
    lines_in_file = 0
    file = File.new("receipts.txt", "a+")
    file.each do |line|
      lines_in_file += 1
    end
    file.close
    id = lines_in_file + 1

    # Create an array to hold the info we want to save
    info = []
    info << id
    info << params[:store]
    info << params[:product]
    info << params[:price]

    # Write the info to the csv
    file = File.new("receipts.txt", "a+")
    file.puts info.join(",")
    file.close

  # Redirect to the page that shows the receipt we just made
  redirect to("/receipts/#{id}")
end

get '/receipts' do
  @all_receipts = []
  file = File.new("receipts.txt", "a+")
  file.each do |line|
    @all_receipts << line
  end
  file.close
  erb :all_receipts
end

get "/receipts/:id" do
  file = File.new("receipts.txt", "a+")
  file.each do |line|
    if line.split(",")[0] == params[:id]
      @receipt_array = line.split(",")
    end
  end
  file.close
  erb :receipt
end

