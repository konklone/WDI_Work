require 'flickraw'
require 'pry'

FlickRaw.api_key="063ffc55560d2a71d3d24c764979abd6"
FlickRaw.shared_secret="253cfd46c8198db6"

def keyword_to_img_url(keyword)

  begin
    list = flickr.tags.getClusterPhotos(:tag => "#{keyword.gsub(' ', '+')}",:cluster_id => 'food-food-food')
    id = list[rand(0..list.length-1)].id.to_i
    photo = flickr.photos.getInfo(photo_id: id)
    img_url = "http://farm#{photo.farm}.staticflickr.com/#{photo.server}/#{id}_#{photo.secret}.jpg"
  rescue StandardError => e
    puts e
  end

end

100.times {keyword_to_img_url("buffalo wings")}

