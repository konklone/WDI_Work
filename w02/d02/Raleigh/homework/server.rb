require "sinatra"
require "sinatra/reloader"


get("/") do
  erb (:move)
end

get("/fix/:should") do

  if params[:should] == "yes"
    erb(:should_yes)
  else params[:should] == "no"
    erb(:should_no)
  end

end

get("/fix/:should/:it") do
  if params[:should] == "yes" && params[:it] == "yes"
    erb(:no_prob)
  elsif params[:should] == "yes" && params[:it] == "no"
    erb(:tape)
  elsif params[:should] == "no" && params[:it] == "yes"
    erb(:wd40)
  elsif params[:should] == "no" && params[:it] == "no"
    erb(:no_prob)
  else
    erb (:move)
  end
end