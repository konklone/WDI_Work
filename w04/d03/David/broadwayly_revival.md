##Optional Homework: Broadway.ly - The Revival Tour

### Prompt
We're going to create a two model Rails CRUD App from scratch. Our two models here are shows and songs. A show has many songs, and a song belongs to a show.

A show has:

* title
* year
* composer
* img_url

A song has:

* title
* embed_url


Your Rails app should have the following controller actions for both songs and shows:

* Index
* New
* Create
* Show

### Instructions

FIRST - Work in your folder for today.

1. Create a new rails app called broadwayly_revival_app `rails new broadwayly_revival_app -d postgresql`
2. Configure your database.yml file (your username, and add localhost as a host)
3. Create a database for your app using psql (or use rake db:create)
4. Create migration files that will help you create your database tables
5. Run rake db:migrate to actually create those tables
6. Create your models
7. Add validation: Make sure that each show is unique.
8. Seed your database with some information using the seed file, run rake db:seed, and test it using the Rails console.
9. Create routes for your app using resources [(Hint: They should be nested)](http://guides.rubyonrails.org/routing.html#nested-resources)
10. Create controllers with the required controller actions (listed above)
11. Define the method for a controller action, then create any corresponding views for that action.
12. Move on to the next controller action until you are done.
13. Add styling to your app and revisit the typography links from yesterday. A decent amount of your stylesheet should be reusable from last week.

### Bonus

Create a third model: tony_award. A show has many tony awards, and a tony award belongs to a show.

A Tony Award has:

* category
* year

Update the rest of your app accordingly.