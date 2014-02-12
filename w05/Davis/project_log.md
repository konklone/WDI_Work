PAGES & their functions

HOME
  welcome
  SIGNUP
  LOGIN

SIGNUP
  checklist of allergies (ie lactose, nut, etc)
    store as booleans into user table
  presented w/ 10 unique foods most-likely tried (ie burger, pasta, etc)
  user vote like or dislike 
    store ingredients into ingredients table unless already exist
    create user_ingredients relationship
    +1 or -1 to ingredients associated w/ food
  redirect to DISPLAY ALL

LOGIN
  authenticate

DISPLAY ALL
  show "playlist"
    search for user_playlist_foods relationships
      display matches
    display restaurants in area that serve that food
  option to GENERATE

GENERATE
  look inside users_ingredients
    sort by % total pos_votes using Lower Wilson Confidence Interval
    take top 3
    request Yummly API
      pull all dishes that include top 3 ingredients
      pick random
        store into "playlist"
          name
          image_url
          ingredients
      add to "playlist"

LIKE OR DISLIKE
  if like
    store ingredients into ingredients table unless already exist
    create user_ingredients relationship
    +1 or -1 to ingredients associated w/ food
  if dislike
    add to unliked_foods table
    store ingredients into ingredients table unless already exist
    create user_ingredients relationship
    +1 or -1 to ingredients associated w/ food

http://we-hungry.herokuapp.com/
git@heroku.com:we-hungry.git


SCRUM

yesterday
  structured datamodel
  wrote schema
today
  upload db to Heroku
  tweak model
  create object classes
  plan routes / path
  start setting up routes
challenges
  heroku db
  reading class example