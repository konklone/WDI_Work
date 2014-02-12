# My Project

## Scope

It's currently really difficult to keep track of apps and their features, known affectionately as doodads. When you're interested in a new functionality, at it's best you can read release notes meticulously, follow the developer or the app if they have twitter accounts, or subscribe to a mailing list if it's a headlining doodad. None of these are good solutions.

I'm looking to create an app that, at its most basic, is a platform to follow the progress and development of iOS App Store Apps. I have lots of ideas to grow it, but you can follow apps, be alerted about updates, and request, upvote/recommend, and be alerted about specific doodads. With a large enough database over time, I'd eventually include the ability to compare similar apps in terms of functionality, utility, etc.

At first, I want to focus on receiving and interacting with app store data and user queries. It will be challenging to manage searches properly with the amount of data (almost 1 billion apps) in the App Store. So managing search, presenting the App Data are fundamental, core functionalities of my project. I'll build from there, from adding the doodads aspect of the app first, a special developer object model, and perhaps a trending doodads view, an alternative log in option.

CHALLENGES: updating database data when Apple's data changes.
  * related, albeit advanced, solution: caching.

## Object Models

  * Users
  * Apps
  * Doodads
  * Developers < Users.
  * I'm planning to store every app that is searched for in the app's database directly, but not every data point, only what is necessary.
  * One large challenge I face is managing app data stored in my database with user-provided feature requests, and simultaneously keeping it as up-to-date as possible as new data becomes available on the App Store.

## Wireframes

  * Located in my wireframes directory

## Resources

  * Apple's Search API, both search and lookup functionalities
  * HTTParty gem to provide data to my object models
  * If I get to it, OmniAuth for facebook login
  * Perhaps pusher for notifications back end
  * add phone number to users (optional) for text alerts


## User Stories

  * As a user, I want to follow apps and be notified of updates so I don't have to keep track of them myself.
  * As a user, I want to 