#Film Library

#gems
require "sinatra"
require "sinatra/reloader"
require "pry"
require "httparty"
require "json"
require "erb"



#two methods for handling transfer of data from file on disk to in memory variable and back again.
#expecting comma separated values separated by new line.  no UID is stored because program uses position
#in array as identifier.
def open_and_read_data(film_array)
	my_file = File.new("movies.txt", 'r')
	
	my_file.each do |x|
		my_array = x.split(",")
		film_array << {:title => my_array[0], :year => my_array[1], :poster => my_array[2]}
	end
  
    return film_array
end

def write_data(film_hash)
    #open in append mode
    my_file = File.new("movies.txt", 'a+')
    
    #construct format - newline goes in front because of where file opens
    film_string = "\n#{film_hash[:title]},#{film_hash[:year]},#{film_hash[:poster]}"

    my_file << film_string
    
    my_file.close


end

#initialize in memory variable
all_films = Array.new
all_films = open_and_read_data(all_films)

#basic route - combine multiple erb's into one display string.
get "/" do
	display = erb :index, :layout => false
	display += erb :form, :layout => false
    display += erb :choices, :layout => false
	
    #only final erb is returned.  i wish there was a more elegant way to do this.
    #also this is a wreck - it renders layout.erb every time!  argh.  have to use layout => false 
    #to override.
    erb display
end

#display all movies.  for each entry, add to the display string all of the html for that film.
get "/movies/?" do

	@display_html = String.new
	@display_hash = Hash.new
	
	all_films.each do |my_hash|
		@display_hash = my_hash
		@display_html += erb :movie, :layout => false
	end

	erb @display_html, :layout => :movies_display

    # TODO: erb :admin_layout, :layout => :main_layout do
    #         erb :user
    #        end
    # From Sinatra docs / nesting erb renders.

end

#to show a particular film by id
get "/movies/:movie_index" do 

	movie_index = params[:movie_index].to_i
	
    if movie_index < all_films.length
       @display_hash = all_films[movie_index]
	   erb :movie
    else
        erb :error
    end

end

#to find a new movie and add to data.
get "/search_movie" do
	name = params[:movie_title]
	
    #formatting for api.
    name = name.gsub(" ", "+")

	url = "http://www.omdbapi.com/?t=#{name}"
    response = HTTParty.get(url)

    #TODO catch no response for error

	parsed = JSON(response)

	film_title = parsed["Title"]
	film_date = parsed["Year"]
	film_poster = parsed["Poster"]

	#add to in memory hash
    all_films << {:title => film_title, :year => film_date, :poster => film_poster}

    #write data to file here
    write_data({:title => film_title, :year => film_date, :poster => film_poster})

    #display film
	@display_hash = all_films.last
	erb :movie
end

#random film selection made very easy by data structure!
get "/random/?" do
    @display_hash = all_films.sample
    erb :movie
end

#simple error handling
get "/error/?" do
    erb :error
end


