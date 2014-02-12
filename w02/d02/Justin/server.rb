require "sinatra"
require "sinatra/reloader"
require "pry"

get "/profiles/:profile_name" do 
	if params[:profile_name] == "Tesla"
		output_name = "Tesla"
		output_img = "<img src='http://www.teslasociety.com/pictures/pic1.jpg'/>"
	elsif params[:profile_name]== "someone"

	end
	output_string = "<!doctype html><html><head></head>
	<body><h1>#{output_name}</h1>
	#{output_img}
	<p><a href='google.com'>Finally!!</a></p>
	</body></html>"
end