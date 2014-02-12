require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'


kitteh_conn = PG.connect(dbname: 'sandbox')


get("/") do
  @url = "http://placekitten.com/#{rand(100..400)}/#{rand(100..400)}"
  erb :layout
end

post("/vote/:id") do 
  kitteh_conn = PG.connect(dbname: 'sandbox')
  if params[:id] == "meow"
   input_str = "INSERT INTO kittehs (url, is_meow) VALUES ('#{params[:meow]}', true);"
 else
  input_str = "INSERT INTO kittehs (url, is_meow) VALUES ('#{params[:meouch]}', false);"
end
  kitteh_conn.exec(input_str)
  kitteh_conn.close

  redirect("/")
end