require 'sinatra'
require 'pry'

def params_to_i(num1, num2)
  first_number = params[num1].to_i
   second_number = params[num2].to_i
end

#set hash to store calculation
calc_history = {0 => 0}

get "/" do
  "Welcome to the Dope Ass Calculator"
end

#list all calculations done in the past
get "/calculator" do 
  # calculations.each {|x,y| "#{x} did #{y}"}
  output = ""
    calc_history.each do |id, calc|
    output <<  "#{id}: #{calc}\n"
  end
  output
end

#list the 3rd calculation
get "/calculator/:id" do
  id = params[:id].to_i
  entry = calc_history[id]

  if entry
    entry
  else
    "No calculation found"
  end
end

post "/calculator/add" do
  last_id = calc_history.keys.max
  first_number = params[:num1].to_i
  second_number = params[:num2].to_i
  calc_history[last_id + 1] = "#{first_number} + #{second_number} = #{first_number+second_number}"
end

post "/calculator/subtract" do
  last_id = calc_history.keys.max
  first_number = params[:num1].to_i
  second_number = params[:num2].to_i
  calc_history[last_id + 1] = "#{first_number} - #{second_number} = #{first_number-second_number}"
end

post "/calculator/multiply" do
  last_id = calc_history.keys.max
  first_number = params[:num1].to_i
  second_number = params[:num2].to_i
  calc_history[last_id + 1] = "#{first_number} * #{second_number} = #{first_number*second_number}"
end

post "/calculator/divide" do
  last_id = calc_history.keys.max
  first_number = params[:num1].to_i
  second_number = params[:num2].to_i
  calc_history[last_id + 1] = "#{first_number} / #{second_number} = #{first_number/second_number}"
end


get "/calculator/:name" do
  "Hi #{params[:name]}"
end