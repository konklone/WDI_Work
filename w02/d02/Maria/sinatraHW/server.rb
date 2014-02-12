require 'sinatra'
require 'sinatra/reloader'

###So hello is also my homework --Unfinished. 
#Please see the planning.md to see what I am trying to build.

#I understand how the Layout.erb works so I did not focus
#on populating that. I think it is right to also add a separate
#style.css that links through the layout page to further
#make your page look nice.

#I need more time to play with how the pages link to each other.
#I am handing this in to show my thought process so far.
#But as I saif before I need time to play with it to really get it.


get '/' do #this takes me on browser to localhost:4567
  # Any strings here will be rendered in the browser
  
  @home = "/"
  erb :hello
end

  #binding.pry


#Then when I put hello + / anything else, it goes to this below,
#which reads the hello.erb file which is reading automatically the layout.erb file
#which then picks up the style.css
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

#I started to try to link the pages like we did with the ann-margret stuff.

get( "/room1/:data_point" ) do

  if params[:data_point] == "room1"
    @link_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWPdc-05HYiJ_02wcQr2lXGJwtuOijobyWWC9d_9QXGshpFSzSqQ"
    erb( :data )
  else
    @link_url = "/"
    erb( :data )
  end
end

get '/hello/room1/' do

@room2 = "/room1/"
erb :room1
end

get '/room1/' do

@room2 = "/room2/"
erb :room2
end