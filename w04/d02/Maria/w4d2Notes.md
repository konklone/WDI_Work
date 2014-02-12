RUBY ON RAILSSSSSS!!!!!!!!!!!!!

Framework

libraries come in Gems
with a library you call it

framework- 
   a collective solution to common problems
   with a framework it calls you
   everything is structured by the arcitechture of the famework.
   is a collection of libraries
  -like sinatra

convention is the trickiest thing to get in Rails.
its about memorization of these conventions.


start up Rails with:
rails server


'static#index'
static is name of the controller and index is the action

Filenames and classname are important
1 class per file.

Actions are going to be instance methods (defs)

every class name will be suffixed wth controller

rake routes shows us all the routes we have in our .rb file

resource :actor <---generates a suite of routes
resource :actor, only: [:show] <---this means only create the show.


first create route then the controller def then the index.erb

http://localhost:3000/actor?info=film

Puppis

get '/puppies' puppies#index

get '/puppies/:id' puppies#show
post '/puppies'   puppies#create
put '/puppies/:id' puppies#update
get '/puppies/new' puppies#create
get '/puppies/:id/edit' puppies#edit

we could do as above or make it simple and just use
resources :puppies

rails generate migration add_actors
then got to the db folder and find timestamped db
and put in your schema like so:

class AddActors < ActiveRecord::Migration
  def up
    create_table :actors do |t|
      t.string :name
      t.text :photo_url
    end
  end
  
  def down
    drop_table :actors
  end
end
then run  rake db:migrate
rake db:migrate nameof db
rake db:rollback to delete it

rails generate migration add_birthdate_to_actors
to add colums

then you get this new file, change it to look like this:

class AddBirthdateToActors < ActiveRecord::Migration
  def up
    add_column :actors, :birth_date, :date
  end

  def down
    remove_column :actors, :birth_date
  end
end






