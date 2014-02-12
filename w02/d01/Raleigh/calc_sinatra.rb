require "sinatra"

get("/") do
   "***Welcome to SinCalc***"
end

calculations = {}

# See all past calculations
get("/calculator") do
   past_calc = calculations.values.join(", ")
   "These are you past calculations: #{past_calc}"
end

# Find a specific calculation
get "/calculator/:id" do
   calculations[params[:id].to_i]

   if entry
      entry
   else
      "That calculation does not exist!"
   end
end

# Addition
post "/calculator/add" do
   if calculations.keys.length == 0 
      last_calc = 0
   else
      last_calc = calculations.keys.max
   end
   addition = (params[:num1].to_i) + (params[:num2].to_i)
   calculations[last_calc + 1] = "#{params[:num1]} + #{params[:num2]} = #{addition}!"

end

# Subtraction
post "/calculator/subtract" do
   if calculations.keys.length == 0 
      last_calc = 0
   else
      last_calc = calculations.keys.max
   end
   subtraction = (params[:num1].to_i) - (params[:num2].to_i)
   calculations[last_calc + 1] = "#{params[:num1]} + #{params[:num2]} = #{subtraction}!"
end

# Multiplication
post "/calculator/multiply" do
   if calculations.keys.length == 0 
      last_calc = 0
   else
      last_calc = calculations.keys.max
   end
   multiplication = (params[:num1].to_i) * (params[:num2].to_i)
   calculations[last_calc + 1] = "#{params[:num1]} + #{params[:num2]} = #{multiplication}!"
end

# Division
post "/calculator/divide" do
   if calculations.keys.length == 0 
      last_calc = 0
   else
      last_calc = calculations.keys.max
   end
   division = (params[:num1].to_i) / (params[:num2].to_i)
   calculations[last_calc + 1] =  "#{params[:num1]} + #{params[:num2]} = #{division}!"
end
