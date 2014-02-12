require "sinatra" #takes gem sinatra loads it into server
require "erb"

#this get below gets you a server!
get("/") do
  erb :boxes #name boxes whatever or :index
  end
  #so :boxes looks for /views/boxes
  #it checks for file views/layout FIRST automatically
  #thats why we put <%=yield%> in layout so it will go back
  #to boxes and to the browser

# / = get the domain name with /
# erb gets the index.erb page