Plan schema


Way to make new db:   
  db_conn = PG.connect( dbname: FILENAME + "_db" )


    new_receipt[:store] = menu_gets( "Enter store name: ", "String" ) || "Store"

  ---->
  What I did in psql:

        movie[:title]= 
mariamercedesmartinez=# CREATE DATABASE movies;
CREATE DATABASE
mariamercedesmartinez-# \c movies
You are now connected to database "movies" as user "mariamercedesmartinez".

movies=# CREATE TABLE movies (
movies(# id serial PRIMARY KEY,
movies(# title varchar(50) NOT NULL,
movies(# year varchar(50) NOT NULL,
movies(# poster varchar(100) NOT NULL);

SCHEMA:
 CREATE DATABASE movies (
  id serial PRIMARY KEY,
  title  varchar(50) NOT NULL,
  year varchar(50) NOT NULL,
  poster integer DEFAULT 1,
  price NOT NULL,
);

CREATE TABLE tbname(attr);

INSERT INTO tbName (dbFirstName, dbLastName, dbMiddleName)
VALUES('John', 'Smith', 'Andrew')

I
######### from postgres docs #################
TABLE table_name ( [
  { column_name data_type [ DEFAULT default_expr ] [ column_constraint [ ... ] ]
    | table_constraint
    | LIKE parent_table [ like_option ... ] }
    [, ... ]
] )

CREATE DATABASE name
    [ [ WITH ] [ OWNER [=] user_name ]
           [ TEMPLATE [=] template ]
           [ ENCODING [=] encoding ]
           [ LC_COLLATE [=] lc_collate ]
           [ LC_CTYPE [=] lc_ctype ]
           [ TABLESPACE [=] tablespace ]
           [ CONNECTION LIMIT [=] connlimit ] ]