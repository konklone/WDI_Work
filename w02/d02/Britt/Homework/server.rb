require "sinatra"
require "sinatra/reloader"
require "erb"
require "pry"

#if the URL is the root directory, load ERB template "profile"
get( "/" ) do
  erb( :index )
end

get( "/options/:data_point" ) do

  case params[:data_point]
  when "pass"
    @link_url = "/options/pass.erb"
    erb( :data )
  when "write_test"
  	@link_url = "/options/write_test.erb"
  	erb( :data )
  when "write_code"
  	@link_url = "/options/write_code.erb"
  	erb( :data )
  when "refactor"
  	@link_url = "/options/refactor.erb"
  	erb( :data )
  when "do_refactor"
  	@link_url = "/options/do_refactor.erb"
  	erb( :data )
  when "new_feature"
  	@link_url = "/options/new_feature.erb"
  	erb( :data )
  else
    @link_url = "/"
    erb( :data )
  end

end
