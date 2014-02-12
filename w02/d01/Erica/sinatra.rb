require 'sinatra'
require 'pry'

calculator = {}
# When they visit the homepage (GET) (/),
# a user should see some text to welcome them to the calculator
get "/" do
  "Welcome to my amazing calculator website! Get ready to calculate."  
end

# When they visit the /calculator page (GET), 
# a user should be able to see all of the calculations that have been done in the past



get "/calculator" do
calculations = calculator.values.join(" , ")
"These are your past calculations: #{calculations}"
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

# a user can see a specific calculation
post "/calculator/add" do 
  firstnum = params[:first_number].to_i
  secondnum = params[:second_number].to_i
  result_add = firstnum + secondnum
 # result_add.to_s # shows the answer
  last_id = calculator.keys.max || 0 # shows the last id
  calculator[last_id + 1] = "#{firstnum} + #{secondnum} = #{result_add}"
  "Your answer is: #{result_add}" 
end

post "/calculator/subtract" do
  firstnum = params[:first_number]
  secondnum = params[:second_number]
  result_subtract = firstnum + secondnum
  result_subtract.to_i
  last_id = calculator.keys.max || 0 
  calculator[last_id + 1] = result_subtract
end

post "/calculator/multiply" do
  firstnum = params[:first_number]
  secondnum = params[:second_number]
  result_multiply = firstnum * secondnum
  result_multiply.to_s
  last_id = calculator.keys.max || 0 
  calculator[last_id + 1] = result_multiply
end

post "/calculator/divide" do
  firstnum = params[:first_number]
  secondnum = params[:second_number]
  result_divide = firstnum / secondnum
  last_id = calculator.keys.max || 0 
  calculator[last_id + 1] = result_divide 
end

# A user can see a the third calculation they've done in the past by visiting /calculator/3 (GET). 
# Same with any other number. 
# If the calculation doesn't exist, they should see text saying that the id wasn't found.




#curl localhost:4567/calculator/add -X POST -F first_number="5" -F second_number="2"

#curl -X POST -F first_number=5 -F second_number=3

