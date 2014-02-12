Databases
db server 
postgres

-db itself is on of many accessable thru DBMS
-db clients --->postgres
-psql (command line)
-pg(ruby gem)

datamodeling and db archit
-schema!!
-entities -> tables
-attributes -> columns
-element->rows

relations/ie multiple tables

FIRST SQL in one table

SQL
 -CREATE/DROP dbs/tables
 -INSERT new data (Create) POST
 -SELECT data (Read) GET
 -ALTER

 -Active Record
 -ORM
 -Ruby Framework
 -conventions
 Create (POST/INSERT)
 Read (GET/SELECT)
 Update (PUT/Update)
 Delete (Drop)
____________________________________________

SELECT (and then list some attributes);

FROM table        from is a clause

---SELECT (store) FROM receipts---

INSERT (INTO table)  into is a clause
VALUES (values)   is also a clause

CLAUSES:
GROUP BY (collapses everythng onto one- dissimilar values)
  -- aggreagate
    FUNCTIONS
    -SUM()
    -COUNT()
    -AVG()
    attr AS attr
WHERE
FROM/INTO
VALUES
ORDER BY (DESC)
SET . = is an assignment

Ex:
receipts_db=# SELECT * FROM receipts WHERE 
receipts_db-# store = 'Sears'
receipts_db-# ;  <-------- dont forget the ; also the SINGLE QUOTES!!!!

EX:
receipts_db=# SELECT * FROM receipts WHERE price > 100;
 
 id |   store   |   item   | number_of_item | price |  buy_date  
----+-----------+----------+----------------+-------+------------
  1 | Sears     | VCR      |              1 |   180 | 1989-12-21
  2 | Toys R Us | Nintendo |              1 |   150 | 1989-12-21
(2 rows)

Ex's.
SELECT * FROM receipts WHERE id = 18;

SELECT * FROM receipts WHERE store = 'Sears' OR 'Macy''s';

SELECT * FROM reeipts WHERE store IN ('Sears','Macy''s, 'Toys R Us');

SELECT item * FROM reeipts WHERE store IN ('Sears','Macy''s, 'Toys R Us');

SELECT * FROM receipts WHERE store = 'Sears' OR store = 'Macy''s';

A NEW CLAUSE: ORDER BY & LIMIT !!

SELECT * FROM receipts WHERE store = 'Sears' OR store = 'Macy''s' ORDER BY price DESC LIMIT 3;

SELECT * FROM receipts WHERE store  IN ('Sears', 'Macy''s') ORDER BY price DESC;

SELECT * FROM receipts LIMIT 5;

SELECT store FROM receipts GROUP BY store;
gets rid of duplicates

<*-- SELECT price, store FROM receipts GROUP BY store;
this wont work because prices are not unique and there are more than one price. --*>

We need to have a function on price wo we can press all of the price values according to stores

SELECT SUM(price) AS sum_of_price, store AS location FROM receipts GROUP BY store;

SELECT SUM(price) AS sum_of_price, store AS location FROM receipts GROUP BY store ORDER BY sum_of_price DESC;

SELECT item FROM receipts WHERE store = 'js Penny''s';

SELECT COUNT(item) FROM receipts WHERE store = 'js Penny''s';

SELECT COUNT(*) FROM receipts WHERE store = 'js Penny''s';
ORDER BY price;

SELECT AVG(number_of_item) FROM receipts WHERE store = 'JC Penny''s';

SELECT AVG(price / number_of_item) FROM receipts WHERE store = 'JC Penny''s';

SELECT SUM(number_of_item) WHERE store = 'JC Penny''s';
***if you see the table there is a number_of_item in the table!!!***

UPDATE receipts SET number_of_item = 4 WHERE item = 'Pink Izod Top';

You can't define how it orders things. You have to oder it by locale (US or Canadia) thisis built into computer system.

There is one way you can affect order and that is by DESCending or ASCending

Active Record:
receips.select = {|row|(conditional)}

DELETE FROM receipts WHERE id = 20

you dont delete atrributes, you delete elements so if you did DELETE FROM receipts it would delete all the receipts.

____________________________
AFTER LUNCH STUFF:
______________________________

first we copied the main.rb and menu.rb into out receipt file we have been working on.
Then
receipts_db-#  ALTER TABLE receipts ADD COLUMN parent varchar(50);
That 
(1) altered the table to add a column 'parent'

Then we had to

(2) assign values to 'parent'
"Mom" went to: JC Pennys, Borders, Macys
"Dad" went to: Toys R Us, Sears
*above in psql..UPDATE tbl (SET attr = val) (Clauses..);


(3) give app the stats ability
 -parent name (each)
 -#presents per parent
 -avg present cost per parent
 -list receipts in desc orderby parent
** Above 
1. SELECT parent FROM receipts GROUP BY parent (or hardcode "Mom" & "Dad")
2. SELECT SUM(number_of_item) WHERE parent = "..";
3. SELECT * ORDER BY _DESC;

(4) give appp the update ability
  -column name
  -row id

In psql add mom and dad like this:

UPDATE receipts SET parent = 'Dad' WHERE store = 'Toys R Us' OR store = 'Sears';
(do same for mom but strores will be diffrent)
then add the db connection stuff under :s
and :u
*** see updated main.rb and menu.rb
_____________________________________________________
Relationships in the table 
ENTITIES

ENTITY RELATIONSHIP MODEL

presents    and    parents

parents have a parent key for ex 
mom = pkey 1
dad = pkey 2
only 1 parent will be associated with a present

each present will also have a present Key

presents table will also have children table
presents table will also have parents table
(parent could also be nil)

parents are related to 0 or many presents
presents are related to 0 or 1 parent
***above is a description of a relationship

from point of view of parent there are many presents

0 1 and Many
when we broke parents out and gave the their own table that is called Normalizing.<--- breaking up date to entities that have attributes and the relationship between those entities in terms of 0, 1  or many

ie
a 1 to many relationshionship from POV id 

children's relationship to present is one or many.
the relationship between presents and chi;dren is many to many.

so there are relationships:
1 to many <--Best
1 to 1 Rare.
many to many this is also BAD too complex
so what do you do? CREATE ANOTHER TABLE!!!

make that table a 1 to many relationship
those tables are called Join Tables

EX. children presents Primary Key, id of children, presents 
\c recepts_db
CREATE TABLE c-p(
id serial Primkey
children_id integer NN
presents_id integer nn
);

FOREIGN KEY if your table refernces another table
constraint
children(id)

DO THIS in psql:


CREATE TABLE parents(
id serial PRIMARY KEY,
name varchar(50) NOT NULL
budget integer NOT NULL
);

SELECT * FROM prents;

INSERT INTO parents(name, budget) VALUES ('Mom', 300), ('Dad', 250);

SELECT * FROM parents;

DELETE FROM receipts WHERE parent = 'Stepmom';

ALTER TABLE receipts RENAME TO presents;

ALTER TABLE presents DROP COLUMN parent;


ALTER TABLE presents ADD COLUMN parent_id integer references parents(id);

UPDATE presents SET parent_id = 1 WHERE store IN ('Sears', 'Toys R Us');

UPDATE presents SET parent_id = 2 WHERE store IN ('Borders', 'Macy''s', 'JC Penny''s');

BTW: when on the command line CTRL A will back to the beginning of the prompt and ctrl + u to delete everything you typed!!

SELECT * FROM presents, parents; 

SELECT * FROM presents,parentsWHERE parent_id = parents.id;

OR with different syntax
SELECT * FROM presents INNER JOIN parents ON presents.parent_id = parents.id;


 





