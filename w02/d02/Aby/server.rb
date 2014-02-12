<<<<<<< HEAD
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  # Any strings here will be rendered in the browser
  # We did this yesterday
  "This is the home page"
end

get '/hello/:name' do
  # We can use erb templates. By default this uses the layout.erb
  # and renders the output of the erb file into its yield block
  # We can also make instance variables available to the template
  # and asssign whatever we want to them.
  # Look in the hello.erb file to see how the instance variables are used
  @name = params[:name]
  @home = "/"
  erb :hello
=======
require "sinatra"
require "sinatra/reloader"
require "pry"

get( "/profiles/:profile_name" ) do
  if params[:profile_name] == "ann-margret"
    output_name = "Ann Margret"
    output_img = "<img src='http://www.whatgoesaroundnyc.com/blog/wp-content/uploads/2013/08/1964-elvis-e-ann-margret-in-viva-las-wegas.jpg' width='400' />"
  elsif params[:profile_name] == "elvis"
    output_name = "Elvis Presley"
    output_img = "<img src='http://www.whatgoesaroundnyc.com/blog/wp-content/uploads/2013/08/1964-elvis-e-ann-margret-in-viva-las-wegas.jpg' width='400' />"
  end

  output_string = "<!doctype html><html><head></head>"
  output_string += "<body><h1>#{output_name}</h1>#{output_img}</body></html>"
    <p><a href=\"/data/statement\">The critics had an image of me"/a></p></body></html>"
  "
  # implicit return
  output_string
end

get( "/data/:data_point") do 
	"You sent us a #{params[:data_point]}"
>>>>>>> development
end