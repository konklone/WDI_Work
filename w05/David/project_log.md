TUESDAY:

USER STORY
I'm a user that may have spotted Dylan the Dog somewhere on the street and taken a photo.  If I have not taken a photo of Dylan the Dog I may be interested in uploading a photo of my own pet, in a unique NYC location.  I'm interested in gaining exposure for these photos, and promoting them on social media to gain more votes for them and possibly have them featured on the website as the photo of the day.

The first time I choose to upload a photo I will be presented with a signup form where I have to enter my email, and create a username and password.  Upon creation of my profile I can upload photos, and I will remain logged in to the site until my session expires.  Upon returning to the site I can login with the information that created previously.  

SCRUM
--Yesterday: I worked on my schema and setup my users and posts table, routes, along with controllers, and forms/views for creating new user and new post.  I also setup the PaperClip gem, integrated it with my database schema, and posts form.  The image data is storing but I have not yet integrated it with Amazon S3 and need to setup my session controller to associate posts with users.

--What I'm doing today: Working on setting up session controller..authentication and autorization.  Then getting Amazon S3 linked up with PaperClip allowing me to upload images, associate them with users, and make them visible in my views.  I also need to integrate password and password_confirmation into my users table.  Lastly I would like to begin to tackle the voting mechanism, create my JOIN table that will keep track of votes with post(id) and user(id).

--What could be a potential problem: The getting images in and out of the Amazon S3 cloud and setting up my voting mechanism.  


WEDNESDAY:

USER STORY--Location

I'm a user that has taken a photo of Dylan the Dog or one of my own pets and am interested in not only uploading the image to the site but having it display on a map by location of where it was taken.



   -- First option -- I took the photo from a device where geotagging was enabled and the photo location will automatically be added to the map.
   --

   Second option  -- I took the photo with a device where geotagging was not enabled and I will need to after uploading choose the location of the photo from a  Google Map interface.

Upon uploading my photo and having getog info input I can view the master map and see photos by location.  

SCRUM
--Yesterday I finished my user login/logout/authorization/authentication.  Setup sessions, and completed my voting mechanism.

--Today I will work on location services, stripping metadata from photos, and allowing users to choose a location if the photo doesn't have gps metadata.

--Potential problems:  Working with google maps api

THURSDAY--

USER STORY--I'm a user that is interested in viewing the photos from the overview location map.  I can hover over photos and see them enlarge on the map.  I may want to select a photo a view more information about it and/or see it paired against another photo for voting. 

SCRUM
--Yesterday I completed getting GPS metadata from images, but couldn't get a location map where a user could choose their image location if their uploaded image did not contain any GPS metadata.  I began working on plotting images on the location map but was hung up with getting Ruby objects into JavaScript.

--Today I will work on getting my location map funtional with images stored in the database.  After that I would like to give a user a map for choosing their image location if no GPS data was present in their upload.  Also, very important is debugging Heroku and styling the site.

--Potentiall problems are working with Google Maps API and getting Ruby objects into the Javascript.  Also, Heroku functionality could be a time consuming problem.


