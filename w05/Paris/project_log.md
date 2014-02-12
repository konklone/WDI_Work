#THURSDAY  
* Yesterday: Added functionality to exclude searches for bike stations that have 0 docks available. Tightened up routes and added link helpers. Created an Account erb for users to edit/delete their accounts. Refactored the core algorithm and pushed to heroku. 75% done with CSS. 

* Today: Add bike search functionality and create necessary views and routes. Tighten up verbiage and finish CSS. 

* Potential obstacle: Fighting the urge to add a bunch of crap that I don't need for tomorrow. 

#WEDNESDAY

#SCRUM

* Yesterday: The user wants to search Citibike docks that are closest to their destination. The user wants to save searches to favorites.

* Today: Refine search logic to exclude docks where no docks are available. Refine favorites to sort according to most recent on top. In possible, move on to push notifications implementation. Refine results page to return a suite of useful information including possibly a map. 

* Potential obstacles: 1) Favorites functionality is working and saving to the database. The favorites index page functionality is interfering with search results page. 2) Need to spend time reading documentation on integrating Google maps. 3) Push notifications gem can't be set up until Apple Developer account is set up. Waiting on authentication. Come on Apple! Be cool! 


#USER STORIES

---

* Jake McFinancedude has landed a job of his dreams in the financial district. He's decided to take control of his morning commute from Williamsburg  (and get some exercise!) by signing up for a 7-day membership with Citibike. He now has access to an unlimited number of 30 minute rides on a citibike (over 30 minutes incurs overage fees per minute) for one week. 

* **Problem:**
* Turns out a lot of people in the financial district are commuting on citibikes and it's difficult for Jake to find an open dock. Because of this he's a) late for work (BAD for a new hire!) and b) incurring overage fees hunting for a dock at the end of his commute (Not cool!). 

* **Awesome Citi app solutions:**
* Jake wants an app that he can use during his Citibike commute so he opens up the Awesome Citi app on his smartphone. 
* Jake wants to securely use the app so he creates a user login and creates a password.
* Jake wants to know the closest available Citibike docks around his work around 8:15am so he opens the app in the morning, signs in and enters his work address. 
* Jake wants a shortcut to this address so he can easily use this app every morning so he saves this location as a 'favorite'.
* He sees from the app that there are two dock locations with available docks. He knows that docks get snatched up fast so he's glad that he can see how many available docks there are at each station. 
* Jake believes in safety first so he wants to use the 'hands-free' smartphone notification feature of Awecome Citi where Jake can assign ringtones or vibrate settings to his top three dock preferences. When Jake is close to his destination, the appropriate alert is triggered. 

* **Problem:**
* Jake McFinancedude got a raise! Hooray. This means more money but -- golden handcuffs - Jake has to be at work a half hour earlier than he used to and available bikes and docks around the city are even more scarce at that hour. 

* **Awesome Citi app solutions:**
* Jake wants to sleep in as late as possible and not waste time hunting for a citibike dock so he uses the Awesome Citi Buddy feature on the AC app where Jake can pay a fee to tag team an Awesome Citi Buddy at the end of his commute to open up a dock for him by checking out a bike at the same dock. 
* Jake wants a Buddy who's available on the date/time of his commute so he enters that information into the 'buddy request' form.
* Jake wants to be sure that they can find each other at the right dock, so he enters the appropriate 'destination dock' location in the 'buddy request' form.
* Jake gets a bid from Dave McCitibuddy who's happy to check out a bike at the destination dock at the same time that Jake arrives. 
* Jake wants to make sure he can contact Dave in case of any changes on his commute so he's glad that the app makes Dave's cell number and email info available to him.
* Jake wants to easily send funds to Dave for a job well done so he's glad that Awesome Citi takes care of fund transfers for him when the job is marked complete.
* Jake thinks Dave is awesome so he leaves Dave a positive review which helps Dave book more jobs as an Awesome Citi Buddy. 

* **Problem:**
* There are no bikes available around the time that Jake wants to commute home.

* **Awesome Citi Solutions:**
* Jake gets a bid from Dave McCitibuddy who's happy to bring a bike to a specified dock at the same time that Jake arrives to pick up a bike. 
* Happiness and efficiency ensue making Jake and Dave satisifed Citibike users. 

---


#SCRUM 

---

* Yesterday. Yesterday I worked on creating a new rails app for my project, setting up my models, routes and user login functionality. I was also able to get the app to pull in data from the Citibikenyc gem and create logic using the Geocoder gem to produce the citibike dock location that's nearest the user's destination. 

---

* Today. I'm reviewing and testing the logic that I worked on yesterday. I'd also like to work on refining the search functionality.  I'd also like to create a notification system that alerts the user via ringtone if the nearest available dock has changed when the user is close to their destination and let them know which dock to reroute to. For this I'd like to start using the notifications gem that I found and start implementing it. 


---

* Complex problem to tackle. There are some errors that I'm getting which relate to my searches controller. I need to iron this out and make sure my routes are flowing the way they should and my methods aren't throwing errors due to routing issues. I need to create logic around excluding docks from search results that don't have docks available. 





