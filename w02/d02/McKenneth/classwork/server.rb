require 'sinatra'
require 'sinatra/reloader'
require 'erb'
#get("/profile/notorious_big") do

        # get("/profile/:profile_name") do
        #   if params[:profile_name] == "notorious_big"
        #     output_name = "Notorious BIG"
        #     output_img = "<img src='http://bossip.files.wordpress.com/2010/05/biggie-smalls-e1274484855185.jpg' alt='biggie'/>"
         
        #     "<!doctype html><html><head></head><body><h1>#{output_name}</h1>#{output_img}<p>Date of Birth: <a href='/profile/notorious_big/dob.html'>May 21 1972</a></p></body></html>"
        #   else
        #     "NO PAGE FOUND SHUT UP AND GO HOME"
        #   end

        # end

        # get("/profile/notorious_big/:link") do
        #   if params[:link] == "dob.html"
        #     "<!doctype html>
        # <html>
        # <head>
        # <title>The Notorious B.I.G.</title>
        # </head>
        # <body>
        #   <div class='info'>
        #     <header>
        #     <h1>Notorious B.I.G. Profile</h1>
        #     <h2>Date of Birth</h2>
        #     </header>

          
        #     <img src='http://bossip.files.wordpress.com/2010/05/biggie-smalls-e1274484855185.jpg' alt='biggie'/>
        #     <p>May 21 1972</p>
                

        # </body>

        # </html>"
        # else
        #   "NO PAGE"
        # end
        # end
#If the URL is the root directory, load erb template "profile"

get("/") do 
  erb :biggie
end

get("/:id") do 
  
  erb :name
    
end