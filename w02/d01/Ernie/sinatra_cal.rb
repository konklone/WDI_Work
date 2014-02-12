require 'Sinatra'
require 'pry'

get "/"do 
"Welcome My Awesome Calculator Web APP!"
end

calculator = {}

get "/calculator" do
   recent_calulations = calculator.values.join(", ")
  "These are your last registered calculations/n #{recent_calulations}"
end

get "/calculator/:id" do
  id = params[:id].to_i
  entry = calculator[id]

  if entry
    entry
  else
    "NONE FOUND SILLY!"
  end
end

get 'calculator/add/:int1/:int2' do
  puts "#{params[:int1].to_i + params[:int2].to_i}"
end


post "/calculator/sub/:int1/:int2" do
  puts "#{params[:int1].to_i - params[:int2].to_i}"
end

post "/calculator/mutiply/:int1/:int2" do
  puts "#{params[:int1].to_i * params[:int2].to_i}"
end

post "/calculator/divide/:int1/:int2" do
  puts "#{params[:int1].to_i / params[:int2].to_i}"
end