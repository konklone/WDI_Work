require 'sinatra'

calculations = {}

get("/") do
  "Welcome to the coolest calculator app evahhh!"
end

get("/calculator") do
  calculations.values.join("\n")
end

get("/calculator/:id") do
  if calculations.keys.include?(id)
    "Calculation #{id} : #{calculations[id]}"
  else
    "Sorry, that's not a valid ID. Try again."
  end
end

post("/calculator/:operator") do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  last_id = calculations.keys.max || 0
  case params[:operator] 
    when "add" 
      result = "#{num1} + #{num2} = #{num1 + num2}"
    when "subtract"
      result = "#{num1} - #{num2} = #{num1 - num2}"
    when "multiply"
      result = "#{num1} * #{num2} = #{num1 * num2}"
    when "divide"
      result = "#{num1} / #{num2} = #{num1 / num2}"
    else
      "Sorry, not a valid operation."
  end
  calculations[last_id + 1] = result
end

