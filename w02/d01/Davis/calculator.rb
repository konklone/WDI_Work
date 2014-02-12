# require 'sinatra'

# calculator = {
# 	1 => {
# 		"add" => [1,2,3]
# 	}, 
# 	2 => {
# 		"subtract" => [3,2,1]
# 	}
# }

# get "/" do
# 	"Ello der mate! This be the calculator!"	
# end

# get "/calculator" do
# 	#show history of calculations
# 	#final return value for Sintra has to be String???
# 	result_string = ""

# 	calculator.each do |log_num, operation_hash|
# 		result_string << "#{log_num}: #{operation_hash.keys.join} #{operation_hash.values[0][0]} and #{operation_hash.values[0][1]} = #{operation_hash.values[0][2]}\n"
# 	end

# 	result_string
# end

# get "/calculator/:id" do
# 	id = params[:id].to_i
# 	entry = calculator[id]
	
# 	if entry
# 		"Calculation #{id}: #{entry.keys.join} #{entry.values[0][0]} and #{entry.values[0][1]} = #{entry.values[0][2]}"
# 	else
# 		"Calculation doesn't exist"
# 	end
# end

# post "/calculator/add/:n1/:n2" do
# 	last_id = calculator.keys.max
# 	n1 = params[:n1].to_i
# 	n2 = params[:n2].to_i

# 	calculator[last_id + 1] = { params["add"]=>[n1, n2, n1+n2] }
# end

#mistakes above for learning / remembering
require 'sinatra'

#worst worst set hash key => string

calculator = {
	1 => {
		"add" => [1,2,3]
	}, 
	2 => {
		"subtract" => [3,2,1]
	}
}

get '/' do
	"Welcome! This is a calculator!"
end

get '/calculator' do
	result_string = ""

	calculator.each do |log_num, operation_hash|
		result_string << "#{log_num}: #{operation_hash.keys.join} #{operation_hash.values[0][0]} and #{operation_hash.values[0][1]} = #{operation_hash.values[0][2]}\n"
	end

	result_string
end

get '/calculator/:id' do
	id = params[:id].to_i
	entry = calculator[id]
	
	if entry
		"Calculation #{id}: #{entry.keys.join} #{entry.values[0][0]} and #{entry.values[0][1]} = #{entry.values[0][2]}"
	else
		"Calculation doesn't exist"
	end
end

#in other words: user types for ex /calculator/add -X POST -F n1=1 -F n2=2
#not distinction bet what is passed via URL and what is passed via -F
post '/calculator/:operation' do
	last_id = calculator.keys.max
	operation = params[:operation]
	n1 = params[:n1].to_i
	n2 = params[:n2].to_i

	case params[:operation]
	when 'add'
		calculator[last_id + 1] = { operation => [n1, n2, n1+n2] }
		"#{operation} #{n1} and #{n2} = #{n1+n2}"
	when 'subtract'
		calculator[last_id + 1] = { operation => [n1, n2, n1-n2] }
		"#{operation} #{n1} and #{n2} = #{n1-n2}"
	when 'multiply'
		calculator[last_id + 1] = { operation => [n1, n2, n1*n2] }
		"#{operation} #{n1} and #{n2} = #{n1*n2}"
	when 'divide'
		n1.to_f
		n2.to_f
		calculator[last_id + 1] = { operation => [n1, n2, n1/n2] }
		"#{operation} #{n1} and #{n2} = #{n1/n2}"
	else
		'Operation not exist / not allowed'
	end
end

