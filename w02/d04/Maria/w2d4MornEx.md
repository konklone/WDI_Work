# Emergency WDI Pick me up


## Prompt
For today's morning exercise, we're going to be creating a site like [Emergency Compliment](http://emergencycompliment.com/), except it will be WDI themed. When a user visits the site, they'll be greeted with a WDI pick me up that will hopefully cheer them up.

We're going to do a Sinatra app that mimics this. You are going to need to create a directory in your folder to hold your Sinatra app. In this folder you're going to have a server.rb file and a views folder. In your views folder, you'll have a layout.erb file and a compliment.erb file.


## Phase 1
When I visit the root ("/") of your app, it should display a greeting and a randomly chosen compliment. The background color of the app should be random as well.

#### Hints

Here is what my layout.erb file looks like. Notice for the background color, I am taking advantage of the embedded Ruby to pass in the color and make it dynamic. Also, you should __not__ need to link an external stylesheet for this exercise.

```
<!doctype html>
<html lang='en'>
  <head>
    <meta charset='utf-8'>
    <title>PICK ME UP</title>
    <style>
    body {background-color: <%= @color %>; font-family: helvetica; color: white; width: 900px; margin: 0 auto}
    div {font: bold 72px helvetica; margin-top: 50px;}
    </style>
  </head>
  <body>
    <h1>Emergency WDI Pickmeup</h1>
    <%= yield %>
  </body>
</html>
```

Here are the compliments and colors I used. Feel free to substitute your own:

```
compliments = ["Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "Syphilis Rivendell for president",
  "Cardigan mumblecore Etsy, YOLO Marfa kogi art party"
]
colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]
```

Put your greeting & compliment each in a div to take advantage of the styling I wrote.

##Phase 2

A user should be able to add to the list of compliments using a POST. You'll need curl to do this like we did on Monday.

##Phase 3

When I visit "/name" ie "/peter", the greeting should say hello to me. There should still be a random compliment and random background color.

##Phase 4

When I visit "/tea", instead of a random compliment, the app should say "OMG Happy Birthday!!!" instead. For any other name, it should perform as in Phase 3.

##Bonus

If you finish early, implement an "I still feel crappy" button that will link to a new page and greet a randomly selected person from class and give them a compliment.

Here's an array for your convenience:

```
["Nichol","Aby","Tom","Ernie","David","Raleigh","Tea","Paris","Justin","Davis","Julie","Sal","Britt","Maria","Mihran","Ann","Erica","Marco","Brad","McKenneth","Russell","Arun","Kevin","Jeff","PJ","Peter"]
```
