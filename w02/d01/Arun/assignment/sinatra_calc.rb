require 'sinatra'

calc_history = {}
get "/" do
	"Welcome to Sinatra Calculator!"
end
get "/calc" do
	calc_history.each {|key, value| print key + vaue + "/n"}
end

get "/calculator" do
	calc = calc_history.values.join(", ")
	"These are all of the calculations #{calc}"

end

get "/calculator/:id" do
	id = params[:id].to_i
	entry = calc_history[id]
end
post "/calculator" do
	last_id = calc_history.keys.max #{ |a, b|  }
	calc_history[last_id + 1] = params[:num]
end

post "/calculator/add" do
	num1 = params[:num1]
	num2 = params[:num2]
	addition_result = num1.to_i + num2.to_i
	addition_result.to_s
	"sum is #{addition_result}"
end
post "/calculator/subtract" do
	num1 = params[:num1]
	num2 = params[:num2]
	subtraction_result = num1.to_i - num2.to_i
	subtraction_result.to_s
	"difference is #{subtraction_result}"
end
post "/calculator/multiply" do
	num1 = params[:num1]
	num2 = params[:num2]
	multiply_result = num1.to_i * num2.to_i
	multiply_result.to_s
	"number 1 multiplied by number two is #{multiply_result}"
end
post "/calculator/divide" do
	num1 = params[:num1]
	num2 = params[:num2]
	division_result = num1.to_i / num2.to_i
	division_result.to_s
	"the quotient is #{division_result}"
end
put "/calculator/:id" do
	id = params[:id].to_i
	calc_history[id] = params[:num]
end
delete "/calculator/:id" do
	id = params[:id].to_i
	calculator.delete(id)
end







