require "pry"
require "sinatra"
require "sinatra/reloader"

get "/" do
    erb :index
end

get 'views/:page' do
  @page = params[:page]
  @home = "/"
  erb :index

end

get '/views/no.erb' do
  @header = "Are Ye The Only Gay In the Village?"
  @message = "Of course ye are! Have ye checked?!"
  @link1 = "Yes, I have!"
  @link2 = "No, I haven't!"
  erb :no
end

get '/views/good.erb' do
  @header = "Are Ye The Only Gay In the Village?"
  @message = "GOOD! Ye best keep it that way."
    erb :good

end

get '/views/find_out.erb' do
  @header = "Are Ye The Only Gay In the Village?"
  @message = "Ye better find out!"
  @link1 = "/views/good.erb"
  @link2 = "/views/liar.erb"
    erb :find_out

end

get '/views/liar.erb' do
  @header = "Are Ye The Only Gay In the Village?"
  @message = "LIAR! Whoa is you, you are the only gay in the village!"
    erb :liar

end
