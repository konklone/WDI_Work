## My Project

I'm looking to create an app that, at its most basic, is a platform to follow the progress and development of iOS App Store Apps. I have lots of ideas to grow it, but you can follow apps, be alerted about updates, and an important feature that I'd like to get up ASAP is the ability to request, upvote/recommend, and be alerted about updates. With a large enough database, I'd like to also eventually make the site about comparing similar apps for functionality, utility, etc.

### What problem are you trying to solve?

It's currently really difficult to keep track of apps and their features. When you're interested in a new functionality, at it's best you can read release notes meticulously, follow the developer or the app if they have twitter accounts, or subscribe to a mailing list if it's a headlining feature. None of these are good solutions.

### What will your app do / what features will it have?

At first, I want to focus on receiving and interacting with app store data and user queries. It will be challenging to manage searches properly with the amount of data (almost 1 billion apps) in the App Store. So managing search, presenting the App Data, and full history of release notes are preliminary functionalities I know I want to implement.

### What do you think you can reasonably implement in 1 week?

I have a LOT of ideas, but I want to keep it reasonably managable to begin with, and expand as much as I can. So far, with reasonable effort and in a fairly short period of time, i've been able to learn the query structure iTunes uses, interact with the response provided, and research some tools to get the full release notes history, which Apple does not provide in their own API, but a few sites have the data in a way that I can scrape using Nokogiri & the amazing SelectorGadget extension for web browsers.

### What APIs or other resources might you use / do you plan on using?

So far, I know I'm going to need to use Apple's Search API (I've learned the query string format that I need at least for software), and HTTParty to get that data (App ID, maybe the icon, and some other as-of-yet undefined data. There's a lot) from Apple's API; I'll use Nokogiri and SelectorGadget to scrape AppAnnie's App Store Data page for the historical release notes, which I'll zero in on using the unique app ID from Apple's search API.

* **Models.** Your app should have at least 3 models. Make sure they are associated correctly.
   
    * Users, Apps, Features? 
    * An important question is how much data I want to store on my database -- do I want every app, every app that is searched for, or should I curate the apps I support to begin with? I need to explore this more and come up with the most viable solution for the purposes of this project, with the idea that this could become a bigger project...

* **Handles invalid data.** Forms in your application should validate data on the backend (controllers & models) and handle incorrect inputs. Validate sign up information, verify necessary model fields are populated (not blank) for required fields, valid email addresses, etc.

    * This will be challenging for finding the correct app that the user is looking for, and showing enough search results without overwhelming.

* **Styling** Make your app look nice. Think about color & typography and make sure everything is aligned properly.
  
  * This will be an important challenge of this project, because it's one of my biggest opportunities as far as my skills are concerned.