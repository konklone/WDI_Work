#AWESOME CITI!
---

#Scope:
---
## What problem are you trying to solve?
---
* During peak hours, citibike users are having a hard time finding available docks for their bikes at the end of their commute.

---

## What will your app do / what features will it have?
---

* Ability to create user accounts. 
* Ability to enter in an address and receive locations for nearest available bike docks.
* Ability to save past trips to a user account.
* Ability to hire an Awesome Buddy to bring you a bike to a dock or open up a spot in a dock for your bike.

---

## What do you think you can reasonably implement in 1 week? 

---

* Ability to create a user profile and log in
* Ability to handle invalid data
* Ability to enter address and get available dock info for all stations in NYC.
* Connect available docks to push notifications alerts. 
* Style
* Publish via Heroku

* **Nice to have:**

* The app will send alerts to the user's smartphone as a 'hands free' feature to route users to a dock once they're within a certain range to the destination. 
* Address the issue of having bikes available at popular dock locations during rush hour.
* Ability to bid for someone to find a bike or dock your bike so you don't have to hunt for a dock. 

---

#User stories:

---

*Jake McFinancedude has landed a job of his dreams in the financial district. He's decided to take control of his morning commute from Williamsburg  (and get some exercise!) by signing up for a 7-day membership with Citibike. He now has access to an unlimited number of 30 minute rides on a citibike (over 30 minutes incurs overage fees per minute) for one week. 

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
  
#Object models: 

---

* [Click in for the ERB.](https://docs.google.com/presentation/d/1fWawtR2dZWApdl8ttt5qk8oeqO7-YBlI6xIHiGEUddE/edit?usp=sharing)

#Resources. 

---

* [Citibikenyc gem](https://github.com/edgar/citibikenyc)
* [Geocoder gem](http://rubygems.org/gems/geocoder)
* Smartphone notifications gem: [Push me up](http://rubygems.org/gems/pushmeup)
* Facebook open graph: [Koala](https://github.com/arsduo/koala)
* Payment gem: [ActiveMerchant](http://rubydoc.info/gems/activemerchant/1.40.0/frames)
* Ratings/reviews gem: [acts as rateable](https://github.com/azabaj/acts_as_rateable)

---

#Wireframes for responsive design: 

---

* User_index. [See all wireframes.](https://www.dropbox.com/sh/vrtdd3vlk0kkfgl/PmnYt6yubq)   
 ![Wireframes:](app_index.png)

























