require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Welcome to the never ending cycle of baking bread!"
  @header = "Do you have a bread recipe?"
  @link_yes = "/taste"
  @link_no =  "/find"

   erb :bread 

end

get '/find' do
  @header = "Find a type of bread to bake!" 
  @link_one_response = "/"
   erb :single_response  
   
end

get '/taste' do
  @header = "Does your bread taste good?" 
  @link_yes = "/adjustments"
  @link_no =  "/write_adjustments"

   erb :bread 
   
end

get '/adjustments' do
  @header = "Does the recipe need adjustments?" 
  @link_yes = "/write_adjustments"
  @link_no =  "/find"

   erb :bread 
   
end

get '/write_adjustments' do
  @header = "Write adjustments for your bread recipe!" 
  @link_one_response = "/taste"

   erb :single_response
   
end


get '/bread/:name' do
  # We can use erb templates. By default this uses the layout.erb
  # and renders the output of the erb file into its yield block
  # We can also make instance variables available to the template
  # and asssign whatever we want to them.
  # Look in the hello.erb file to see how the instance variables are used
  @name = params[:name]
  @home = "/"
  erb :bread 

get '/bread/:'
end