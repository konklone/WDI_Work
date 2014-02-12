### WDInstagram ###

require "sinatra"
require "sinatra/reloader"
require "active_record"
require "pry"

ActiveRecord::Base.establish_connection(
   :adapter => "postgresql",
   :host => "localhost",
   :username => "RaleighD",
   :password => "",
   :database => "wdinstagram"
   )

require_relative "./models/entry"

# Index Page (Displays all entries)
get "/insta" do
  @entries = Entry.all

  erb :index
end

# New Page (Displays a form to create a new entry)
get "/insta/new" do
  erb :new
end

# Create (Creates a new entry and saves it to the database)
post "/insta/create" do
   new_entry = Entry.new(author: params[:author], photo: params[:photo], date: params[:date])
   # Save the entry to the table
   new_entry.save

   redirect "insta/#{new_entry.id}"
end

# Show Page (Displays one particular entry)
get "/insta/:id" do
  @entry = Entry.find(params[:id])

  erb :show
end