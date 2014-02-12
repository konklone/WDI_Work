require "sinatra"
require "sinatra/reloader"
require "pry"






get "/?" do
    @number = 1
    erb :square
end

get "/multiple/?" do
    @number = params[:num].to_i
    @shape = params[:shape]

    case @shape
    when "circle"
        erb :circle
    when "square"
        erb :square
    else
        raise error
    end

    rescue error
        redirect "/error"
    end

end

get "/circle/?" do

    @number = 1
    erb :circle

end

get "/error/?" do
    erb :error
end


