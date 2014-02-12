require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
	adapter: 'postgresql',
	hostname: 'localhost',
	username: 'daviskoh',
	password: '',
	database: 'meme_db'
)

require_relative './meme'

get '/' do
	@h1 = "One does not simply create a meme"
	@image = "http://www.seo.com/wp-content/uploads/2013/03/boromir-One-does-not-simply-walk-into-Mordor.jpg"

	erb :home
end

get '/generate' do
	add = MemeSet.all.last.meme

	@h1 = "One does not simply #{add}"

	@image = MemeSet.all.last.pic_url

	erb :meme
end

get '/create' do
	erb :create
end


# store meme sets using sql?
post '/create' do
	meme = params[:meme]
	# pic_url = params[:pic_url]
	pic_url = "http://www.seo.com/wp-content/uploads/2013/03/boromir-One-does-not-simply-walk-into-Mordor.jpg"

	meme_set = MemeSet.new(meme: meme, pic_url: pic_url)
	meme_set.save

	redirect('/generate')
end

# NOTE: meme generation through fixed positioning
	# need workaround
# get '/all' do
# 	erb :all
# end

get '/specific' do 
	# retrieve previous combo
end