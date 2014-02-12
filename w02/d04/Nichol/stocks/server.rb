require "sinatra"
require "sinatra/reloader"
require "erb"
require "pry"
require "nokogiri"
require "open-uri"
require "httparty"

#get /stocks?symbol=goog
#=> 845.45

get "/" do
	erb :index
end


get "/stocks" do
	@stock_symbol = params[:stock_symbol]

	response = HTTParty.get("http://www.google.com/ig/api?stock=#{@stock_symbol}")

	@data = response["xml_api_reply"]["finance"]
	@price = response["xml_api_reply"]["finance"]["last"]["data"]

	@yahoo_response = HTTParty.get("http://chart.finance.yahoo.com/z?s=#{@stock_symbol}&t=6m&q=l&l=on&z=l&p=m50,e200,v&a=p12,p&c=%5EDJI,EURUSD=X&region=de&lang=de-DE")
	erb :stocks

end

get "/apitest/:stock" do
	doc = Nokogiri::HTML(open('http://www.google.com/ig/api?stock=GOOG'))
	binding.pry
	@stock = params[:stock]
	google_results = test

end
