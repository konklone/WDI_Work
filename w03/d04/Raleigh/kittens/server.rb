require "sinatra"
require "sinatra/reloader"
require "pg"
require "pry"


get "/" do

   int_gen = rand(100..500)
   int_gen2 = rand(100..500)

   @url_gen = "http://placekitten.com/#{int_gen}/#{int_gen2}"
   erb :index
   # binding.pry
end

post "/vote/:vote" do 

   if params[:vote] == "meow"
      meow_vote = true
   else
      meow_vote = false
   end
   url_str = params[:url]

   # Open db Connection
   db_conn = PG.connect(:dbname => "sandbox")

   db_conn.exec("INSERT INTO morning_kittens (url, is_meow) VALUES ('#{url_str}', #{meow_vote});")
   # Close db Connection
   db_conn.close

   redirect "/"
end
