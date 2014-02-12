require 'sinatra'

calculator = {0 => "INITIALIZED"}

def num_1
  num_1 = params[:num_1].to_i
end
def num_2
  num_2 = params[:num_2].to_i
end


get("/") do
  "Welcome to the Calculator! To see a list of all the calculations done just type localhost:4567/calculator"
end

#lists all calculations performed
get("/calculator") do
  calcs = calculator.values.join("  |  ")
  "Here's a list of all the calculations done so far:
  #{calcs}"
end

#shows individual calculations at supplied index
get("/calculator/:id") do
  id = params[:id].to_i
  calculator[id]
end

#performs addition
post("/calculator/add") do
  num_1
  num_2
  sum = num_1 + num_2
  key = calculator.keys.max + 1
  calculator[key] = "The sum of #{num_1} and #{num_2} is : #{sum}" 
  "The sum of #{num_1} and #{num_2} is : #{sum}" 
end

#performs subtraction
post("/calculator/sub") do
  num_1
  num_2
  net = num_1 - num_2
  key = calculator.keys.max + 1
  calculator[key] = "The net of #{num_1} minus #{num_2} is : #{net}"
  "The net of #{num_1} minus #{num_2} is : #{net}"
end

#performs multiplication
post("/calculator/multi") do
  num_1
  num_2
  multi = num_1 * num_2
  key = calculator.keys.max + 1
  calculator[key] = "The net of #{num_1} times #{num_2} is : #{multi}"
  "The net of #{num_1} times #{num_2} is : #{multi}"
end

#performs division
post("/calculator/divide") do
  num_1
  num_2
  div = num_1 / num_2
  key = calculator.keys.max + 1
  calculator[key] = "The net of #{num_1} divided by #{num_2} is : #{div}"
  "The net of #{num_1} minus #{num_2} is : #{div}"
end