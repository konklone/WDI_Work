First we did morning exercise see scrabble.rb

at the end the bonus used select
ruby use of select:

http://www.ruby-doc.org/core-2.0.0/Hash.html#method-i-select

values.select do |key,value|
value == 4
end

this will go through everything in values hash.

don't forget:
.map maps out an array

http://ruby-doc.org/core-2.0.0/Array.html#method-i-map

letter.array.map do |letter|
values[letter]
end

end Peter's lecture and review about morning ex.
__________________________________
 PJ helps up change our terminal:

Terminal rubs a program called Bash or Zsh that runs in the terminal to interact with your OS.
when using pry you are out of Bash also with Git.

call programs with Bash like cd or ls and putting in parameters into those programs.

bash_profile sets up how your command line looks it exists in you home directory. BE CAREFUL changing stuff with it. If you are going to make a change always copy it before you make changes.
cd into your home(~) and then subl 
ls -l
ls -a show all hidden files.
____________________________________

Sinatra conventions   HTML / CSS  REST
_____________________________________

Sinatra conventions:

get

URL
http://example.com/path/next/file.html?q=google+etc

http = protocol
example.com = domain name DNS
path = the path
file name, file type in this case html
? = query string

The old style 

The the path: was the directory structure of the server.
Everything is a GET except form submission (POST).
The way you used to send info with a get was with query strings.
POST sent information as nput tags but many were hidden.
GET:query string
POST:Input tags
Apache LAMP stack

New Style

REST 

to describe new way of doing things.Using rest relies on using a framework to contol a lot of conventions to abstract the architectural elements (the directory structure of the server) Instead the Path is something meaningful and exists statically on the internet for client server relationship.

in new style Path is semantic.                   
VERBS----> server instructions 
POST to create something on end user server.  C
GET to read information stored on srver.      R
PUT to update info on server.                 U
DELETE to delete things on the server.        D

all the stuff above is data maodeling and maps to SQL instructions and those instructions are:
SQL
Insert
Select
Update
Dlete

So our filenames wont ne in URL instead of the path we say:
Datapoint1/datapoint2

SINATRA CONVENTIONS

get  "/x/y/:z" do
("return string")<---this is implicit
end
read incoming http request if it matches the path structure (the slashes have to match)
They count the number of slashes. Anything that is not a symbol it tries to match if it has a symbol anything between the slashes and word ---- id
/:name/id

sinatra creates a hash named params
params[:s]

You can also put query strings on there. It also gets put into a parameter. params[q]

HTML

We will be using html5
tags hold metadata
open/close
tagname attrt1= "attrb2" for example the link tag 
<a href=""

id = ""
class = "" <---used more
<nav>
<ul> class="navmenu"> now you can style it in css.  DESCRIBE your data.
  <li>
  </li>
  </ul>
</nav>
  <ol> etc

<!doctype html>
<html>
<head>
  data about page
    <title>Example Domain</title>
    <meta charset="utf-8" />
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style type="text/css">
    </style>    
</head>

<body>
  the content.
    <header> </header
    <footer></footer>
    <section> </section>
    <articles></articles>
    <aside> </aside>
<div>
  <h1>
    <p>
      <a href= .....
</body>
</html>

Build a profile website
it will hold a
title called persons name profile 
image of person
name of person
dob
profession
list of pets
all that in a DIV CLass called "info"
and another dicv class "statement "
text in there.
<img src="/pix/milford_sound/milford_sound_t.jpg" width="225" height="151" alt="Milford Sound in New Zealand">

<li> <span class="info-point">Name</span>

before the browser displays the html it reads the css.

there are two ways to display an element:
  it reads html and draws a box then it goes to head, skips it goes to body and it draws another box, then it drws another box, then it goes to div and drws a box then the next box and then h1 and draws a box. then gets to img draws a box. Boxes inside boxes.
  Everytime it draws a box it draws 4 boxes (margin border padding and stuff inside last box)
  This is called: The Box Model.

  the display for anything drawn as a box is called a: 
  Block.
  
  Inline - is in the box I am in the element of which I am a child starting left to right.

  Inline-block -  

  em = the # of pixels of your text.

  css is evaluated top to bottom if 2 css rules have same value at selector level whichever one cones first LOSES.

  . = class
  # = id

  now you can apply to group of elements not by their element type (so instead of li you can write:  li.info-point)
___________________________________________________
BACK TO SINATRA
in server.rb file :

require "sinatra"
require "sinatra/reloader"
require "pry"

get( "/profiles/ann-margret" ) do
  output_name = "Ann Margret"
  output_img = "<img src='http://www.whatgoesaroundnyc.com/blog/wp-content/uploads/2013/08/1964-elvis-e-ann-margret-in-viva-las-wegas.jpg' width='400' />"

  output_string = "<!doctype html><html><head></head>"
  output_string += "<body><h1>#{output_name}</h1>#{output_img}</body></html>"
end

ERB = Embedded Ruby

Another Sinatra convention:

ERB files use the filemame.erb, live in the directory/views
erb(:name of file)

get("/") do
 erb :index <-- the file it needs to reference
end
He renamed the .html file to .erb
 

 if URL is the root directory load erb template :profile

 get("/") do
 erb :profile
 end


FOR DEBUGGING:
 dont forget to use params.inspect in pry to see whats in the params hash

erb is html with this tag:

<%=   %> <----ruby goes inside

layout.erb

HW will be to build a series of webpages that connect using one layout. 

run ruby server.rb
while that runs (server.rb)

then go to browser



