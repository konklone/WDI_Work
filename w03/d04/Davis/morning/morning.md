#Morning Exercise - Meow or Not Meow!

## Part 1
- In your `sandbox` database create a `morning_kittens` table
  - id : integer
  - url : string with 255 possible characters
  - is_meow : boolean

## Part 2
- Write a Sinatra application
  - a 'get' request to '/' should:
    - generate a random placekitten url
    - use integers between 100 and 400
      - examples:
        - "http://PlaceKitten.com/200/130"
        - "http://PlaceKitten.com/302/135"
        - "http://PlaceKitten.com/232/235"
    - display the placekitten image
    - keep your `layout.erb` file simple for this

## Part 3
- Create two buttons above the kitten picture (each is inside of a form)
  - `Meow` which is a post request to '/vote/meow'
  - `Not Meow` which is a post request to '/vote/not_meow'


- a 'post' request to '/vote/:vote' should:
  - store the kitten's url & is_meow in the database (how can you pass the url?)
    - as shown `:vote` should contain a "meow" or "not_meow"
  - after database insertion, redirect to '/'

## Bonus
- Create a route for a get request to '/meow' which will display the images of all the kittens stored in the database that were "meow"

- Create a route for a get request to '/not_meow' which will display the images of all the kittens stored in the database that were "not_meow"

- Create a nav bar on all pages that allows the user to navigate to '/' to judge more kittens, '/meow' to look at all the meow kittens, or '/not_meow' to look at all the not meow kittens
- Style it to make it look nicer!