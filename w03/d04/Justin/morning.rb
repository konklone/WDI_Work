require 'sinatra'
require 'sinatra/reloader'
require 'pg'

@url = ""

get "/" do
	erb :index
end

post "/vote/:vote" do
	vote = params[:vote]
	url = params[:url]
	if vote == "meow"
		b_value = true
	else
		b_value = false
	end

	sql_string = "INSERT INTO morning_kittens (url, is_meow) "
	sql_string += "VALUES ('#{url}', #{b_value});"

	db_conn = PG.connect( dbname: "sandbox")
		db_conn.exec(sql_string)
	db_conn.close

	redirect "/"
end