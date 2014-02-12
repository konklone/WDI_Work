# FINAL PROJECT

## Description
* A peer-to-peer marketplace for kid-friendly activities to do around the city.

## Data Model

* Users
first name
last name
email null: false
image_url
city
about_me or about_us
social_groups
interests
can_accomodate (small group, medium, large)
expert_in
created_at
updated_at

* Activities
user_id
vendor_id (single table inheritance. vendor belongs to class: User, defined in the model)
price 
date 
time
duration
description
tags / category
image
location
size (so we can see if there are spaces left)
created_at
updated_at

* Activities_users
activity_id
user_id

* Connections
user_id
friend_id
created_at
updated_at

* Favorites
vendor_id
user_id
created_at
updated_at

* Appointments
date
hour
created_at
updated_at

* Messages
sender_id
recipient_id
sender_deleted
recipient_deleted
subject
body
read_at
created_at
updated_at

* Rate
rater_id
rateable_id
rateable_type
stars
dimension
created_at
updated_at

* Comments
title
comment
commentable_id
commentable_type
user_id
role
created_at
updated_at

 ## Wireframes

https://www.dropbox.com/sh/iyjnnmle3m9ntgh/YWHdVokTnc

## User Stories

* As a user I want to login and have my information secure
* As a user I want to create a profile
* As a vendor I want to create vendor profile
* As a user and vendor I want to be validated by connecting my facebook and linkedin profiles
* As a user I want to search for activities by category
* As a vendor I want to offer an activity
* As a user I want to confirm an activity
* As a user I want to request(create) an activity for a specific date(s)
* As a user I want to be able to request an activity that’s not listed
* As a user I want to be able to email the vendor before booking to work out the details
* As a user I want to pay for an activity
* As a user I want to be paid for providing an activity
* As a user or vendor  I want to be able to edit an activity
* As a user or vendor  I want to be able to edit my profile
* As a user I want to leave a review of a vendor
* As a user I want to add friends so I can see their feed and invite them to group activities
* As a user I want to make a planned activity a group activity
* As a user I want to create a group activity
* As a user I  want to see the vendor’s social network to feel secure that they are a safe person to deal with
* As a user I want to receive bids on an activity that I requested
* As a vendor I want to be able to make a bid on an activity
* As a user I want to upload images for my user profile
* As a user I want to upload images to the event page
* As a user I want to see the vendor approaching on a map
* As a user and vendor I want to receive an email to confirm the activity that was created
* As a user or vendor I want to be able to cancel an activity
* As a user or vendor I want to be able to rechedule an activity
* As a user and vendor I want each vendor to pass a criminal background check
* As a user I want to favorite vendors

## Dependencies

* acts_as_commentable
* koala
* devise
* bootstrap
* letsrate
* paperclip
* s3
* can can
* stripe









