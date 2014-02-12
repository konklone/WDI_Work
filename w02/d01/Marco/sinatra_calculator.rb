require "sinatra"
require "pry"
#binding.pry

get "/" do
  "Welcome to Sinatra's Calculator!

   Please type in a function:
   /calculator
   /calculator/add
   /calculator/subtract
   /calculator/multiply
   /calculator/divide\n"
end

past_calculations = {0 => "Initialized"}

get "/calculator" do
  index = past_calculations.values.join(", ")
  "Past Calculations: #{index}"
end

get "/calculator/:id" do
  id = params[:id].to_i
  entry = past_calculations[id]

  if entry
    entry
  else
    "Calculation Not Found"
  end
end


post "/calculator/add" do
  num_1 = params[:num_1].to_i
  num_2 = params[:num_2].to_i

  id = past_calculations.keys.max + 1
  past_calculations[id] = "#{num_1} + #{num_2} = #{num_1 + num_2}"

  "#{num_1} + #{num_2} = #{num_1 + num_2}"
end

post "/calculator/subtract" do

  num_1 = params[:num_1].to_i
  num_2 = params[:num_2].to_i

  id = past_calculations.keys.max + 1
  past_calculations[id] = "#{num_1} - #{num_2} = #{num_1 - num_2}"

  "#{num_1} - #{num_2} = #{num_1 - num_2}"
end

post "/calculator/multiply" do

  num_1 = params[:num_1].to_i
  num_2 = params[:num_2].to_i
  
  id = past_calculations.keys.max + 1
  past_calculations[id] = "#{num_1} * #{num_2} = #{num_1 * num_2}"

  "#{num_1} * #{num_2} = #{num_1 * num_2}"

end

post "/calculator/divide" do

  num_1 = params[:num_1].to_i
  num_2 = params[:num_2].to_i
  
  id = past_calculations.keys.max + 1
  past_calculations[id] = "#{num_1} ÷ #{num_2} = #{num_1 / num_2}"

  "#{num_1} ÷ #{num_2} = #{num_1 / num_2}"

end

# post "/calculator/:function" do

#   if params[:function] == "add"
#     "Add"

#     # if last_id == "0" do
#     #   last_id
#     # else 
#     #   calculator[last_id + 1] = calculator.keys.max
#     # end
#     # "#{num1} + #{num2} = #{num1 + num2}}"

#   elsif params[:function] == "subtract"
#     "Subtract"

#   elsif params[:function] == "multiply"
#     "Multiply"

#   elsif params[:function] == "divide"
#     "Divide"

#   else
#     "Sorry, fuction not recognized!"

#   end
# end

# curl localhost:4567/calculator/add -X POST -F num_1="10" -F num_2="5"


