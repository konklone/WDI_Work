ActiveRecord uses PG Gem to connect with Postgresql

1.Repo
2.bundler
3.RACK
these allow heroku recreate the env on our local machine to their environment.
ports allow a multitude of interfaces for computers to connect...most popular is port 80

Port 80 down the rack server through to the computer ip and then back up.
our sinatra app on heroku is in one of these layers.
config.ru is our application logic

 Development environment 
 local machine.
 we are on a mac os rbenv
 it is where we do devlment 

 and Production environment
is working code.

after git push heroku master you have 
to in out terminal 
heroku pg:psql and then paste in the sql file
CREATE TABLE entries (
  id serial primary key,
  author varchar(25),
  photo text,
  post_date date
);

this will create out tables form our schema or if you change your schema.

heroku pg:psql -c "delete from entries;" wil delete all the entries in the db at heroku.

  
