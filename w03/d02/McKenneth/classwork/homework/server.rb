require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host: "localhost",
  username: "macadocious",
  password: "",
  database: "sandbox"
  )

require_relative './models/entry'

  get("/welcome") do 
    @pictures = Picture.all 
    erb :index
  end

  get("/welcome/add") do
    erb :add
  end
  
  post("/welcome") do 
    new_pic = Picture.new(author: params[:author], photo: params[:photo], date: params[:date])
    new_pic.save
    redirect("/welcome/#{new_pic.id}")
  end

  get("/welcome/:id") do 
    @picture = Picture.find(params[:id])
    erb :show
  end