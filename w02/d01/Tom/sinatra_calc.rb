# require necessary files, framworks or tools
require 'sinatra'
require 'pry'

# Create the default menu hash
menu = { 1 => "Add", 2 => "Subtract", 3 => "Multiply", 4 => "Divide"}


# set the root route with a welcome message and display the menu
get "/" do
  "Welcome to Tom's Calculator!!"
   calc_options = menu.values.join(", ")
  "Please choose from the available calculation options:  #{calc_options}"
end

# create an empty hash to store the history of calculations
calcs = {}

# The user should see a list of all the calculations and can pick to see by a unique id
# Index
get "/calculator" do
  all_calcs = calcs.values.join(", ")
  "Here is a list of all of your calculations #{all_calcs}"
end

get "/calcs/:id" do
  id = params[:id].to_i
  calcs[id]
end

post "calcs/:id" do
  last_id = cals.keys.max
  calcs[last_id + 1] = params[:name]
end

# we need to pass in either add, subtract, multiply or divide to the id
post "/calculator/add" do
  first_num = params[:first_param].to_i
  second_num = params[:second_param].to_i
  "The sum is #{first_num} + #{second_num} = #{first_num + second_num}"
end

binding.pry

post "/calculator/subtract" do
  first_num = params[:first_param].to_i
  second_num = params[:second_param].to_i
  "The difference is #{first_num} - #{second_num} = #{first_num - second_num}"

    # need to increment the unique id
    # need to push to the hash as strings
end

post "/calculator/multiply" do
  first_num = params[:first_param].to_i
  second_num = params[:second_param].to_i
  "The product is #{first_num} * #{second_num} = #{first_num * second_num}"

    # need to increment the unique id
    # need to push to the hash as strings
end

post "/calculator/divide" do
  first_num = params[:first_param].to_i
  second_num = params[:second_param].to_i
  "The quotient is #{first_num} / #{second_num} = #{first_num / second_num}"

    # need to increment the unique id
    # need to push to the hash as strings
end


#binding.pry

  # if params[:operation] == "a"
  #     first_num = params[:first_param].to_i
  #     second_num = params[:second_param].to_i
  #       first_num + second_num
  #   elsif params[:operation] == "s"
  #     first_num = params[:first_param].to_i
  #     second_num = params[:second_param].to_i
  #       first_num - second_num
  #   elsif params[:operation] == "m"
  #     first_num = params[:first_param].to_i
  #     second_num = params[:second_param].to_i
  #       first_num * second_num
  #   elsif operation == "d"
  #     first_num = params[:first_param].to_i
  #     second_num = params[:second_param].to_i
  #       first_num / second_num
  #   else
  #   "Please choose a, s, m, d"
  # end


  # Need to create a unique id for each new calculation
  # last_id = guest_book.keys.max
  # guest_book[last_id + 1] = params[:name]







# curl localhost:4567/calculator/add -X POST -F first_param="1" -F second_param="2"
#=> 3











