require 'httparty'
require 'pry'

def search
  query = params[:query].gsub(" ","+")
  response = HTTParty.get("https://itunes.apple.com/search?term=#{query}&entity=software&limit=10")

  if response["resultCount"] == 0
    "No results found."
  else
    @results = []
    response["results"].each do |result|
      @results << result
    end
    # then do then view
  end
end

def show
  lookup_id = params[:id]
  response = HTTParty.get("https://itunes.apple.com/lookup?id=#{lookup_id}")
  @app = App.new
  res = response["results"][0]

  @itunes_id = res["trackId"]
  @name = res["trackName"]
  @itunes_url = res["trackViewUrl"]
  @icon_url = res["artworkUrl512"] # artworkUrl100, artworkUrl60
  @developer = res["artistName"]
  # @developer_company = res["sellerName"] # legal entity of software provider
  @developer_url = res["sellerUrl"]
  @price = res["price"]
  # @currency = res["currency"] # probably don't need
  # @formatted_price = res["formattedPrice"] # reports "Free" if 0.0
  # @current_version = res["version"]
  # @current_release_notes = res["releaseNotes"]
  @description = res["description"]
  @current_rating = res["averageUserRatingForCurrentVersion"]
  @current_rating_count = res["userRatingCountForCurrentVersion"]
  @total_rating = res["averageUserRating"]
  @total_rating_count = res["userRatingCount"]
  # @content_rating = res["contentAdvisoryRating"] # "trackContentRating"
  # @categories = res["genres"] # array of app store catgories
  # @category_ids = res["genreIds"] # array of corresponding ids; not sure how I'd use, but could be useful?
  @category = res["primaryGenreName"]
  # @category_id = res["primaryGenreId"]
  @game_center_enabled = res["isGameCenterEnabled"] # Boolean
  # @launch_date = res["releaseDate"]
  # @supported_languages = res["languageCodesISO2A"] # array of ISO 639-1 two-character language codes
  @is_universal = res["features"].include?("iosUniversal") # if universal, true
  # @kind = res["kind"] # wrapperType
  # @file_size_bytes = res["fileSizeBytes"]
  @app.save!

  @screenshot_urls = res["screenshotUrls"] # enumerate each to screenshots table
  @ipad_screenshot_urls = res["ipadScreenshotUrls"] # enumerate each to screenshots table
end

# response["results"][0].keys
# => ["kind", "features", "supportedDevices", "isGameCenterEnabled", "artistViewUrl", "artworkUrl60", "screenshotUrls", "ipadScreenshotUrls", "artworkUrl512", "artistId", "artistName", "price", "version", "description", "currency", "genres", "genreIds", "releaseDate", "sellerName", "bundleId", "trackId", "trackName", "primaryGenreName", "primaryGenreId", "releaseNotes", "formattedPrice", "wrapperType", "trackCensoredName", "trackViewUrl", "contentAdvisoryRating", "artworkUrl100", "languageCodesISO2A", "fileSizeBytes", "sellerUrl", "averageUserRatingForCurrentVersion", "userRatingCountForCurrentVersion", "trackContentRating", "averageUserRating", "userRatingCount"]