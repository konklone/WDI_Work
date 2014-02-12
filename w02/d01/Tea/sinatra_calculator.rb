require 'sinatra'
calculations = {}

# WELCOMES TO APP
get "/" do
  "Welcome to Sinatra's Calculator App!"
end

# SHOWS PREVIOUS CALCULATIONS
get "/calculator" do
  "Here are past calculations:\n#{calculations}"
end

# PREVIOUS CALCULATIONS ACCESSIBLE VIA ID NUMBER
get "/calculator/:id" do
  id = params[:id].to_i
  entry = calculations[id]

  # IF ID NUMBER DOESN'T EXIST, YELLS AT USER
  if entry
    entry
  else
    "Nope, ID not found. Sorry, kinda."
  end
end

# DELETE STUFF
delete "/calculator/:id" do
  id = params[:id].to_i
  calculations.delete(id)
end

# USERS CAN CALCULATE & AUTO ADDS CALCULATION TO HASH
post "/calculator/:function" do
  last_id = calculations.keys.count
  num1 = params[:num1].to_f
  num2 = params[:num2].to_f

  case params[:function] 
    when "add"
      a = "#{num1} + #{num2} = #{num1 + num2}"
    when "subtract"
      a = "#{num1} - #{num2} = #{num1 - num2}"
    when "divide"
      a = "#{num1} / #{num2} = #{num1 / num2}"
    when "multiply"
      a = "#{num1} / #{num2} = #{num1 * num2}"
    else
      "Oops, try something else."
  end
  # INCREMENTAL UPNESS OF HASH ID FOR UNIQUE ID KEY THING
  calculations[last_id + 1] = a
end





