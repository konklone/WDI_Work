require 'active_record'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

ActiveRecord::Base.establish_connection(
adapter: "postgresql",
host: "localhost",
username: "macadocious",
password: "",
database: "moma_db"
)

class Painting < ActiveRecord::Base
  belongs_to :artist
  # validates :title, :year, :image_url, presence: true
end

class Artist < ActiveRecord::Base
  has_many :paintings
  # validates :name, :nationality, :dob, presence: true
end

  get("/moma") do 
    erb :index
  end

  get("/moma/artists") do 
    @the_artist = Artist.all
    
    erb :artists
  end

  get("/moma/artists/:id") do
    @the_painting = Painting.all
    @id = params[:id].to_i
    erb :paintings
  end

  post("/moma/artists") do 
    #need to remove lines 16 and 21
    @artist = params[:artist]
    @title = params[:title]
    @url = params[:url]
    @year = params[:year]
    a = Artist.new(name: @artist)
    b = Painting.new(title: '#{@title}', image_url: '#{@url}', year: '#{@year.to_i)}')
    a.save
    b.save
    redirect("/moma/artists")
    
  end