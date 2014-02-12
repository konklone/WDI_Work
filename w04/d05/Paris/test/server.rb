require 'sinatra'
require "sinatra/reloader"
require 'geocoder'
require 'json'
require 'active_record'
require 'citibikenyc'
require 'pry'


# establishes connection with ActiveRecord
ActiveRecord::Base.establish_connection(
  :adapter => "postgresql", 
  :host => "localhost",
  :username => "Paris",
  :password => "",
  :database => "sandbox"
  )

require_relative './models/venue'

get "/citi" do
  erb :index
end

post "/citi" do  
  # venue = Geocoder.coordinates(params[:address])
  @venue = Venue.new(address: params[:address])
  @venue.save

  redirect "/citi"
  end

  get "/citi/test" do
  @venue = Venue.find_by(id: 1)
  @coordinates = Geocoder.coordinates(@venue.address)

    @x = @coordinates[0]
    @y = @coordinates[1]

    # lat.slice!("Latitude: ")
    # @x = lat.to_f

    # long.slice!("Longitutde: ")
    #  @y = long.to_f

    Citibikenyc.branches.values[2].each do |station_location| @x2 =  station_location.values[1]
    end

    Citibikenyc.branches.values[2].each do |station_location| @y2 =  station_location.values[2]
    end

# setting citibike data equal to an instance variable. 
    @cb_ll_list = Citibikenyc.branches.values[2]

# below measures the distance between the destination and a dock location.
    def distance(x,x2,y,y2)
    Math.sqrt(( x - x2)**2 + (y - y2)**2)
    end

# below produces the station with the shortest distance to the destination. 
    def get_station(x,x2,y,y2)
      Citibikenyc.branches.values[2].min_by do |station| station.distance(x,x2,y,y2)
      end
      return Citibikenyc.branches.values[0]
    end

    Citibikenyc.branches.values[2].get_station(@x,@y, @x2,@y2)


  end

     binding.pry


# <input name="authenticity_token" type="hidden" value="<%=  form_authenticity_token %>" />
