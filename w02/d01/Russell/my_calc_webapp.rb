require 'sinatra'
require 'pry'
#+++++++++++++++#
calculator = {}
get "/" do
  "Hello and welcome to an underperforming calculator website!"
end

get "/calculator" do
	calculations = calculator.values.join(",")
	"These are all of the past calculations: #{calculations}"
end

get "/calculator/:id" do
  id = params[:id].to_i
  entry = calculator[id]
    if entry
    entry
  else
    "THAT REALITY DOESN'T EXIST, COBB!"
  end
end

post "/calculator/add" do
	first_number = params[:first_number]
	second_number = params[:second_number]
	result_add = first_number.to_i + second_number.to_i
	result_add.to_s
	last_id = calculator.keys.max || 0
    calculator[last_id + 1] = result_add
end

post "/calculator/multiply" do
	first_number = params[:first_number]
	second_number = params[:second_number]
	result_multiply = first_number.to_i * second_number.to_i
	result_multiply.to_s
	last_id = calculator.keys.max || 0
    calculator[last_id + 1] = result_multiply
	
end

post "/calculator/subtract" do
	first_number = params[:first_number]
	second_number = params[:second_number]
	result_subtract = first_number.to_i - second_number.to_i
	result_subtract.to_s
	last_id = calculator.keys.max || 0
  calculator[last_id + 1] = result_subtract
end

post "/calculator/divide" do
	first_number = params[:first_number]
	second_number = params[:second_number]
	result_divide = first_number.to_i / second_number.to_i
	result_divide.to_s
	last_id = calculator.keys.max || 0
  	calculator[last_id + 1] = result_divide
end


# # 	first_number = gets.chomp.to_i
# # 	"What is your first number? #{first_number}"
# # 	second_number = gets.chomp.to_i
# # 	"What is your second number? #{second_number}"
# # 	sum = "first_number" + "second_number"
# # 	"Your sum is #{sum}"
# # end


# put "/calculator/:id" do
#   id = params[:id].to_i
#   calculator[id] = params[:name]
# end

# post "/calculator" do
#   last_id = calculator.keys.max
#   calculator[last_id + 1] = params[:name]
# end

# - X POST -F 