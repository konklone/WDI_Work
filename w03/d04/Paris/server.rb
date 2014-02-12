require 'sinatra'
require 'pg'
require 'sinatra/reloader'

kittens = ["http://placekitten.com/400/300", "http://placekitten.com/400/400", "http://placekitten.com/400/400", "http://placekitten.com/100/400", "http://placekitten.com/300/400"]

get "/" do   
@kittens = kittens.sample
  erb :index
end

post "/vote/:vote" do

 db_conn = PG.connect( dbname: "sandbox", :host => 'localhost')

    url = params[:url]
    # vote needs to be a boolean
    # vote = params[:vote]
    if params[:vote] == "meow"
      is_meow_vote = true
    else
      is_meow_vote = false
    end

    query = "INSERT INTO morning_kittens"
    query += "(url, is_meow) VALUES"
    query += "('#{url}', #{is_meow_vote});"
    db_conn.exec( query )
    db_conn.close

  redirect "/"
end

post "/vote/meow" do

end

post "/vote/not_meow" do


end

