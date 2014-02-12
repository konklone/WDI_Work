require 'sinatra'

# Create
# Read
# Update
# Destroy

# user should see a welcome to the calculator app
get "/" do
  puts " Welcome to Calc-it Online"
end

calculator = {}

# user should see all the calculations they've done in the past
get "/calculator" do
  calculations = calculator.values.join(", ")
  "These are the calculations you've done: #{calculations}"
end

get "/calculator/:id" do
  id = params[:id].to_i
  entry = calculator[id]

  if entry
    entry
  else
    "That ID is wasn't found"
  end
end


post "/calculator/add" do
  first_num = params[:first_num].to_i
  second_num = params[:second_num].to_i
  result_add = first_num + second_num
 # result_add.to_s
  last_id = calculator.keys.max || 0
  calculator[last_id + 1] = "#{first_num} + #{second_num} = #{result_add}"
  "Your answer is: #{result_add}."
end

post "/calculator/subtract" do 
  first_num = params[:first_num].to_i
  second_num = params[:second_num].to_i
  result_subtract = first_num.to_i- second_num
 # result_subtract.to_s
  last_id = calculator.keys.max || 0
  calculator[last_id + 1] = "#{first_num} - #{second_num} = #{result_subtract}"
  "Your answer is: #{result_subtract}."

end

post "/calculator/multiply" do
  first_num = params[:first_num]
  second_num = params[:second_num]
  result_multiply = first_num.to_i * second_num.to_i
 # result_multiply.to_s
  last_id = calculator.keys.max || 0
  calculator[last_id + 1] = "#{first_num} * #{second_num} = #{result_multiply}"
  "Your answer is: #{result_multiply}."

end

post "/calculator/divide" do 
  first_num = params[:first_num]
  second_num = params[:second_num]
  result_divide = first_num.to_i / second_num.to_i
 # result_divide.to_s
  last_id = calculator.keys.max || 0
  calculator[last_id + 1] = "#{first_num} / #{second_num} = #{result_multiply}"
  "Your answer is: #{result_divide}."
end





