require 'nokogiri'
require 'open-uri'
require 'httparty'
require 'pry'


# searches for first result matching the search
def app_search search_string
  query = search_string.gsub(" ","+")
  response = HTTParty.get("https://itunes.apple.com/search?term=#{query}&entity=software&limit=1")
  res = response["results"][0]
  @app_id = res["artistId"]
  @app_name = res["trackName"]
  @url = res["trackViewUrl"]

  @features = res["features"] # array, incl. Universal
  @app_icon = res["artworkUrl512"]
  @developer = res["artistName"]
  @developer_company = res["sellerName"]
  @developer_company_website = res["sellerUrl"]

  @price = res["price"]
  @currency = res["currency"]
  @formatted_price = res["formattedPrice"]

  @current_version = res["version"]
  @current_release_notes = res["releaseNotes"]
  @description = res["description"]

  @current_user_rating = res["averageUserRatingForCurrentVersion"]
  @current_user_rating_count = res["userRatingCountForCurrentVersion"]
  @total_user_rating = res["averageUserRating"]
  @total_user_rating_count = res["userRatingCount"]

  @content_rating = res["contentAdvisoryRating"] # "trackContentRating"
  @categories = res["genres"] # array of app store catgories
  @category_ids = res["genreIds"] # array of corresponding ids; not sure how I'd use, but could be useful?
  @primary_category = res["primaryGenreName"]
  @primary_category_id = res["primaryGenreId"]

  @original_release_date = res["releaseDate"]
  @supported_languages = res["languageCodesISO2A"]
  @file_size_bytes = res["fileSizeBytes"]
end

def app_annie_link(rel_path)
  "http://www.appannie.com/apps/ios/app/#{rel_path}/"
end

print "Make a search query to iTunes:"
term = gets.chomp

annie_ok_string = @app_name.gsub(/[^0-9a-z ]/i, '').gsub(/[\s]+/,"-").downcase

# link_template(app_id) || link_template(annie_ok_string)

user_agent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.69 Safari/537.36"

# doc = Nokogiri::HTML(open(link_template( @app_id ), "User-Agent" => user_agent ))
doc2 = Nokogiri::HTML(open(link_template( annie_ok_string ), "User-Agent" => user_agent ))

binding.pry

# Nokogiri
# CSS selectors: .app-version-note p , h5

# working to return first all headers, then all app release notes
doc2.css("h5 , .app-version-note p").text