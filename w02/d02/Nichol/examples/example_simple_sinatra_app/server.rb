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
end