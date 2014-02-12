require "sinatra"
require "sinatra/reloader"
require "erb"

mta = {:l_train => ["bedford", "1st ave"], :g_train => ["greenpoint", "nassau"], :n_train => ["canal", "8th"]}

get("/plan") do
   erb :lines
end

get("/plan/:line") do
   @mta = mta
   if params[:line] == "l_train"
      erb :l_line
   elsif params[:line] == "g_train"
      erb :g_line
   elsif params[:line] == "n_train"
      erb :n_line
   else
      erb :lines
   end
end



#    - if you click on a train line link, you'll go to `localhost:4567/plan/[LINE]` and then see all of the stops on that line
#    - **example:** when you click the L line, you'll be taken to /plan/l_train and see all of the L train's stops on that page