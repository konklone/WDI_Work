require 'sinatra'
require "sinatra/reloader"
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql", 
  :host => "localhost",
  :username => "evobersi",
  :password => "",
  :database => "moma_db"
  )

require_relative './models/moma.rb'

get "/moma" do
    @paintings = Painting.all
  erb :index
end

get "/moma/new" do
  erb :new
end

get "/moma/:id" do
  @painting = Painting.find(params[:id])
  erb :show
end

post "/moma" do
#   # everything in the parens is one argument
  painting = Painting.new({title: params[:title], year: params[:year], image_url: params[:image_url]})
  painting.save

  redirect "/moma/#{painting.id}"
end







