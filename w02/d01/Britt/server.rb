require 'sinatra'

get "/" do
	"Welcome to Britt's Sinatra Calculator"
end

# hash for all historical calculations
calc_history = {0 => 0}

# finds the largest key in the calculations history hash
# def calculate_last_id
# 	calc_history.keys.max
# end

get "/calculator" do
	output = ""
	calc_history.each do |id, calculation|
		output << "(#{id}). #{calculation}\n"
	end
	output
end

get "/calculator/:id" do
	id = params[:id].to_i
	entry = calc_history[id]

	if entry
		entry
	else
		"No calculation with that id found."
	end
end

post "/calculator/add" do
	last_id = calc_history.keys.max
	num_1 = params[:num_1].to_i
	num_2 = params[:num_2].to_i
	calc_history[last_id + 1] = "#{num_1} + #{num_2} = #{num_1 + num_2}"
end

post "/calculator/subtract" do
	last_id = calc_history.keys.max
	num_1 = params[:num_1].to_i
	num_2 = params[:num_2].to_i
	calc_history[last_id + 1] = "#{num_1} - #{num_2} = #{num_1 - num_2}"
end

post "/calculator/multiply" do
	last_id = calc_history.keys.max
	num_1 = params[:num_1].to_i
	num_2 = params[:num_2].to_i
	calc_history[last_id + 1] = "#{num_1} * #{num_2} = #{num_1 * num_2}"
end

post "/calculator/divide" do
	last_id = calc_history.keys.max
	num_1 = params[:num_1].to_i
	num_2 = params[:num_2].to_i
	calc_history[last_id + 1] = "#{num_1} / #{num_2} = #{num_1 / num_2}"
end

