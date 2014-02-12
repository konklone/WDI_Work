require 'sinatra'
require 'sinatra/reloader'
require 'pg'

get "/" do
  # gen rand placekitten url using ints 100..400
  @url = "http://placekitten.com/#{rand(100..400)}/#{rand(100..400)}"
  erb :index
end

post "/vote/:vote" do
  @url = params[:url]
  if params[:vote] == "meow"
    @is_meow = true
  else
    @is_meow = false
  end

  # do PG.connect stuff
  connx = PG.connect( dbname: 'sandbox' )

  query = "INSERT INTO kittens "
  query += "(url, is_meow) VALUES "
  query += "('#{@url}', #{@is_meow})"

  connx.exec( query )

  # close that stuff
  connx.close

  redirect "/"
end