Databases
Postgres i s database management system
oracle
mysql
postgresql

>psql (-h localhost)
\l = (list dbs)
\c db = dbname (connect to dbs)
\q = (exit)


Sinatra server creates the csv file the DBms is built 
to ensure that the underlying file willl not have 
any problems with many people using it.

it is a server of its own.
so postgress isreally a server that is running in 
the back.

we come up with Models knoe how to interact.

ACID transactions

SCHEMA= how the info in db is inputted and how 
it is read back to us. It is a description of 
tables in the db.

TABLES- rows describe type of data and 
stores the data (data instances). Attributes of data.

difference between an excel file and a relational db
is that the tables themselbes dont desctibe the entity.
The entities have relationships
you breakdown (model) the entities. 

Modeling the data is a process that leads to a schema.

SQL is defined by an international group so there is
one sql language

ID:integer = serial
store:string == varchar(50)
item:string =  ''
#items:integer = integer
price:float = money
date:strig= date
a unique value is called a Key.
so id is a serial number and is a key.
NOT NULL there are parts of the db we dont want 
to leave blank. Default 1 is to not leave blank
Default current_date (that is a pstgres method)

CREATE DATABASE (dbname);
DRIP DATABASE (dbname);
CREATE TABLE tbname(attr);
INSERT INTO dbname;
SELECT * FROM dbname;

INSERT is a sql term for create inside of a tablewhich in t
the http world is POST
SELECT is for readng ---> GET
UPDATE--->PUTS
DELETE---->DELETE
above is the resful CRUD. they map directly to sql commands.


we are communicatig to PG thru psql
SQL is a protocol.

pg is not postgres






















