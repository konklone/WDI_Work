#Build a calculator!! 
#Step 1 calculator working 
#Step 2 cataloging calculations 

require 'sinatra'
require 'pry'

calculations = {1 => "2 + 3 = 5", 2 => "6 - 4 = 2", 3 => "4 * 3 = 12"}

# CALC HOMEPAGE 
  get "/" do 
    "Welcome to the online calculator!
    You are able to add, subtract, multiple and divide.
    --To add: go to /calculator/add 
    --To subtract: go to /calculator/subtract
    --To multiple: go to /calculator/multiple
    --To divide: go to /calculator/divide 
    You can find past calculations here: /calculator"
  end 

#curl -X POST -F first_param=val -F second_param=val

###Catalogue of calculations  
get "/calculator" do 
     total_calculations = calculations.values.join(" | ")
     "What have people calculated? Check out the list: #{total_calculations}"
end 

#Creating keys for each calculation (entry id)
get "/calculator/:id" do 
  id = params[:id].to_i 
  calculations[id]
end 

#Functioning calculator 
#Adding/subtracting/multiplying/dividing two variables and pushing complete calculation to string 
  post "/calculator/add" do 
     num1 = params[:num1].to_i
     num2 = params[:num2].to_i 
     result = num1 + num2
     key = calculations.keys.max + 1 
     calculations[key] = "#{num1} + #{num2} = #{result}" 
     "Your result is #{result}." 
    end 
#type into terminal: curl localhost:4567/calculator/add -X POST -F num1="2" -F num2="3"

  post "/calculator/subtract" do 
     num1 = params[:num1].to_i
     num2 = params[:num2].to_i 
     result = num1 - num2
     key= calculations.keys.max + 1 
     calculations[key] = "#{num1} - #{num2} = #{result}" 
     "Your result is #{result}."   
    end 

  post "/calculator/multiple" do 
     num1 = params[:num1].to_i
     num2 = params[:num2].to_i 
     result = num1 * num2
     key= calculations.keys.max + 1 
     calculations[key] = "#{num1} * #{num2} = #{result}" 
     "Your result is #{result}." 
    end 

  post "/calculator/divide" do 
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i 
    result = num1 / num2
    key=calculations.keys.max + 1 
    calculations[key] = "#{num1} / #{num2} = #{result}" 
    "Your result is #{result}."  
  end 
 

