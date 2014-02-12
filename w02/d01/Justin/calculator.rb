#  Sinatra Calculator

require "sinatra"

past_calc = ["You didn't do this one"]

get "/calculator" do 
	"Welcome to the Sinatra Calculator! <br><br>
	You can add, subtract, multiply, and divide. <br><br>
	The proper format is:<br>
	/calculator/addition/x/y/ for addition.<br>
	/calculator/subtract/x/y for subtraction.<br>
	/calculator/multiply/x/y/ for multiplication.<br>
	/calculator/divide/x/y/ for division."
end

get "/calculator/addition/:x/:y" do
	answer = params[:x].to_i + params[:y].to_i
	answer_a = "#{params[:x]} + #{params[:y]} = #{answer}"
	past_calc << answer_a
	"#{answer_a}"
end

get "/calculator/subtraction/:x/:y" do
	answer = params[:x].to_i - params[:y].to_i
	answer_s = "#{params[:x]} - #{params[:y]} = #{answer}"
	past_calc << answer_s
	"#{answer_s}"
end

get "/calculator/multiplication/:x/:y" do
	answer = params[:x].to_i * params[:y].to_i
	answer_m = "#{params[:x]} x #{params[:y]} = #{answer}"
	past_calc << answer_m
	"#{answer_m}"
end

get "/calculator/division/:x/:y" do
	answer = params[:x].to_i / params[:y].to_i
	answer_d = "#{params[:x]} / #{params[:y]} = #{answer}"
	past_calc << answer_d
	"#{answer_d}"
end

get "/calculator/:i" do
	past_index = params[:i].to_i
	past_answer = past_calc[past_index]
	"#{past_answer}"
end