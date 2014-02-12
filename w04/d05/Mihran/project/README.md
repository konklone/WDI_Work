##### 1. Scope #####

My app (unnamed as of yet) is an experience designed to appetize and relax the user with food photos and reggae music. Once a user has created an account and logged in, they enter a kewyord - a food or type of dish they enjoy eating - and are shown random images, one at a time, related (thanks to text tags) to that keyword. 

Users rate each photo they are shown, until they have had enough. Then then can navigate to a gallery page, where they view all the photos they have rated, along with their ratings (which they can then change).  On this gallery page is embedded a random reggae track from one of a handful of youtube channels run by reggae record collectors.

##### 2. User Stories #####

As a user, I want to log in to the app with a personal password so that I (alone) can build my profile.
As a user, I want to be able to view other people's profiles.  
As a user, I want to enter a keyword pertaining to some food I enjoy, so that I can see images related to that food. 
As a user, I want to be able to rate each image, so that I can later refer to my ratings collectively.
As a user, I want to be able to take a break from rating and look at all the images I've rated, along with my ratings.
As a user, I want to be able to change my ratings whilst I look through them.
As a user, I want to hear some good music while I go over my ratings. 
As a user, I want to be able to log out so that no other person can build on my session.

##### 3. Object Models #####
I've included a hand drawing but I don't understand how to draw this diagram and include more than just the user model... I will bring this up in class.

##### 4. Resources #####

I'm going to use the Flickr API. my api key is below
#################
          Flickr API;

          Done! Here's the API key and secret for your new app:

            mihran's app
          Key:
          063ffc55560d2a71d3d24c764979abd6

          Secret:
          253cfd46c8198db6
#################

Although the flickr API requests seem pretty straightforward, I'm going to use a gem that I've installed, FlickRaw, to make the requests.
Notes on using tags with this gem can be found here : http://hanklords.github.io/flickraw/FlickRaw/Flickr/Tags.html

I have worked out how to generate a link to a random JPG from flickr from a tag (although flickr seems to require a peculiar 'cluster-id' with three tags. I can probably work with this.)   

               require 'flickraw'

               FlickRaw.api_key="063ffc55560d2a71d3d24c764979abd6"
               FlickRaw.shared_secret="253cfd46c8198db6"

               def keyword_to_img_url(keyword)
                 
                 list = flickr.tags.getClusterPhotos(:tag => "#{keyword.gsub(' ', '+')}",:cluster_id => 'food-food-food')
                 id = list[rand(0..list.length-1)].id.to_i
                 photo = flickr.photos.getInfo(photo_id: id)
                 img_url = "http://farm#{photo.farm}.staticflickr.com/#{photo.server}/#{id}_#{photo.secret}.jpg"

               end

I'm also going to embed YouTube videos, though I don't think I need to use an API for this.

##### 5. Wireframes #####

I want it to look like a typed one-page restaurant menu. 
drawings tk. 