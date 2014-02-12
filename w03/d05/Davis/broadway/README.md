#Broadway.ly

## Prompt
* You made it to the end of week 3. ^5!
* For our comprehensive lab this week, you will be building a two model Sinatra app and deploying it to Heroku.

Going with our Broadway theme, our two models are going to be Shows and Songs. A show has many songs, and a song belongs to a show.

A show has:

* title
* year
* composer
* img_url

A song has:

* title
* embed_url

NOTE: Check out [how to embed a youtube video](https://developers.google.com/youtube/player_parameters#Embedding_a_Player)

Here's what the url looks like:
![youtube_url](youtube_url.png)

Here's here you find the video_id:
![video_id](youtube_id.png)

# *FIRST - Copy the starter code into ~~your folder for today~~ a new folder in your dev directory.*


## Part 1 - Database-ize
* Start by setting up your database schema and creating your database. Test it to make sure it works!

## Part 2 - ActiveRecord-ize
* Set up your models using ActiveRecord. Test them to make sure they work and they are associated correctly.

* Add ActiveRecord Validations to make sure that all of the titles for the shows are both present and unique.

* Create AT LEAST 3 shows with 3 songs each so you have a good amount of data to start with.

## Part 3 - Sinatra-ize
* Build out your Sinatra app one route at a time. Make sure to test it before moving on to the next route. We've provided stubs for the routes that you will need for your app.

## Part 4 - Pretty-ize
* Style your app to make it look nice. These are going on the internet so represent yourself well!

## Part 5 - Internet-ize
* Deploy your app to Heroku and share it with your friends & classmates!

## Part 6 - Submission
* Put your app on GitHub
   * add a README.md file (using touch) to the base of your repo (it can be empty if you like)
   * [Create a new GitHub repo](https://github.com/new)
   * [Add a git remote for your project](https://help.github.com/articles/adding-a-remote)
   * `git push origin master`! (ie follow the instructions once you create your github repo)
* In your work folder (.../WDI_NYC_Array_Work/w03/d05/Yourname) add a file named "Broadwayly.md" that includes the URL for:
   * Your app on Heroku
   * Your GitHub repo
   * push it to origin and send Peter a pull request
* Pour yourself a nice Scotch, relax

## Bonus
* Implement a "Search" feature where users can enter a show title into a form and they are displayed the "show page" for that show if it exists.
