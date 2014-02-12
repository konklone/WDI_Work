require 'pg'

begin # if running for the first time, create a new database and table
  db = PG.connect( host: 'localhost' )
  r = db.exec( "CREATE DATABASE movies_db;" )
  db.close

  db = PG.connect( dbname: 'movies_db', host: 'localhost' )
  r = db.exec( "CREATE TABLE movies ( id serial PRIMARY KEY, title varchar(50) NOT NULL, year varchar(4) NOT NULL, poster varchar(100) NOT NULL );" )
  db.close
rescue
  # just ignore any PG::DuplicateDatabase, etc. error
end
