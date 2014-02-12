require 'pry'
require 'sinatra'

#calcNums = {1=> "15 + 15", 2=> "10 * 10", 3 => "12 / 2"}

#numbers = {}
#Learned I dont need this bcause sinatraautomatically creates a hash.
#curl -X POST -F num1=val -F num2=val
#That's how you provide multiple `params` to the server

# get is by typing in the browser
# post is by curling

#initialize empty hash
calcNums = {0 => "initialize"}

get "/" do
  name = "Amazing"
  "Welcome to the #{name} Calculator WebApp! OMG I can't believe this is happening, can you?!" 
end

get "/calculator" do
  #curl 2 nums in Terminal like so: curl localhost:4567/calculator/add or sub etc -X POST -F num1=val -F num2=val "
 "These are the previous calculations: #{calcNums[]}"
end
#curl 2 nums in Terminal like so: curl localhost:4567/calculator/add or sub etc -X POST -F num1=val -F num2=val "

# - A user can POST an Addition calculation to `/calculator/add` by providing 2 numbers as parameters.
# - Same with `/calculator/subtract`, `/calculator/multiply`, and `/calculator/divide`
# - The calculator can add, subtract, multiply and divide.
post "/calculator/add" do
  #id = params[:id].to_s    #this = guest_book/blabla  the params id will = blabala
  #guest_book[id]
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  key = result.calcNums.keys.max +1 
  calcNums[key] = "#{num1} + #{num2} = #{num1 + num2}"
  "#{num1} + #{num2} = #{num1 + num2}"
end
binding.pry
post "/calculator/sub" do
  #id = params[:id].to_s    #this = guest_book/blabla  the params id will = blabala
  #guest_book[id]
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  key = result.calcNums.keys.max +1 
  calcNums[key] = "#{num1} - #{num2} = #{num1 - num2}"
  "#{num1} - #{num2} = #{num1 - num2}"
end

post "/calculator/mult" do
  #id = params[:id].to_s    #this = guest_book/blabla  the params id will = blabala
  #guest_book[id]
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  calcNums[key] = "#{num1} * #{num2} = #{num1 * num2}"
  "#{num1} * #{num2} = #{num1 * num2}"
end

post "/calculator/div" do
  #id = params[:id].to_s    #this = guest_book/blabla  the params id will = blabala
  #guest_book[id]
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  calcNums[key] = "#{num1} / #{num2} = #{num1 / num2}"
  "#{num1} / #{num2} = #{num1 / num2}"
end



#curl -X POST -F first_param=va2 -F second_param=2

# post "/calculator/add" do
#   entry1 = calculator.keys.max
#   guest_book[last_id + 1] = params[:name] 
# end
# post "/guest_book" do
#   last_id = guest_book.keys.max
#   guest_book[last_id + 1] = params[:name]
# end

