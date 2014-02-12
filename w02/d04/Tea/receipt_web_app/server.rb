require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get "/" do
  erb :index
end

get "/receipts" do
  erb :receipt_list
end

get "/receipts/new" do
  # shows form so that people can enter information for receipts
    erb :form
# end
end

get "/receipts/:id" do

  if params[:id].to_i.is_a? Fixnum
    @id_num = params[:id]
    erb :particular_receipt
  else
    "We can't find your receipt"
  end

end

post "/receipts" do
      file = File.new("receipts.txt", "a+")
      items = []
      params.values.each do |value|
        items << value
      end

      id_num = 0
      id_num += file.readlines.size
      list_items = "#{id_num}, #{items.join(", ")}"

      file.puts list_items
      file.close
      # Shows full list after submission
      erb :receipt_list
end