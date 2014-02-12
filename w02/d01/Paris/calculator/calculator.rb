require 'sinatra'

get "/" do
  name = "***WELCOME TO YOUR CALCULATOR***"
  "Lets do some math."  
end
  
past_calculations = { 1 => "2+2 =4",  2 => "4-2=7", 3 => "3*3=9", 4 => "8 / 2 =4" }


 get "/calculator" do 
  past_stuff = past_calculations.values.join(", ")

  "Here are the calculations that have been done in the past. #{past_stuff}"
 end 

get "/calculator/:id"  do
  id = params[:id].to_i
  entry = past_calculations[id]

  if entry
    "Here is your calculation: "
    past_calculations[id]
    
  else
    "none found silly"
  end
end

# nums = { 1 => "1",  2 => "2", 3 => "3", 4 => "4", 5  => "5", 6 => "6", 7 => "7", 8 => "8", 9 => "9"}

post "/calculator/add"  do
    # id = params[:id].to_i
    # idtwo = params[:id].to_i
    # entry = nums[id]
    # entry2 = nums[idtwo]
    # "Here is your calculation #{entry + entry2}"

  # params[:id] = 2.to_s
  # params[:id]  = 3.to_s
  "Your calculation is #{2+3}"
end

post "/calculator/subtract"  do
  # params[:id] = 4.to_s
  # params[:id]  = 3.to_s
  "Your calculation is: #{4 - 3}"
end

post "/calculator/multiply"  do
  # params[:id] = 2.to_s
  # params[:id]  = 3.to_s
  "Your calculation is: #{2 * 3}"
end

post "/calculator/divide"  do
  # params[:id] = 6.to_s
  # params[:id]  = 3.to_s
  "Your calculation is: #{6 / 3}"
end

# n = {1 => "ts",  2 = "34th",  3=> "28th-n", 4 => "23rd-n", 5 => "us"}

# get "/mta/ts/us"
#   id = params[:id].to_i
#   id = params[:id].to_i
#   entry = n[id]

# "Your trip length from #{} to us is 4 stops." 
# end

# curl -X POST -F first_param=val -F second_param=val













