Ruby Modules

talked about classes

class Person
  def say
  end
end

class Child < Person
  def play
  end
end

so the methods in the Child responds to the say and the play
the Person only say.

Respods to :

1. implemented by class

2. Impemented by parents

3. Implemented in Modules

4. Included by parents

A second use of Modules (a way to group behavior):

classes what is unique is that we instantiate classes to a particular instance.
has data and behavior
so in computer class it tracks name and make also borrowed and borrowed_by.
behavior is we can ask it computer, what is you make..computer boot.

there are times when we have behavior without data.
So models can be a collection of similar behavior.

A method you can call on the class occurs if you define a method on the class itseld
by doing self. inside the def (see math.rb)

def self.humanity you would see ::humanity
end

def say you would see #say
end

people = ["Jeff", "Barney the dinasaur", "Joseph(dreamcoat)"]
# now to print all the stuff in the array :
people.each do |name|
  puts name
end

Now go see enum.rb file
can also go to http://ruby-doc.org/core-2.0.0/Enumerable.html

INTERNET
__________________

collection of communication protocols.
layers of the INTERNET
1.Internet protocol suite = IP(internet protocol)everything that connects to internet
has an address(URL). (so every computer has  an addressable IP)127.00.01
2.DNS domain=name server 
google .com goes to an ip address
you can use ip address or the domain name server
3.transport layer = transmition control protocol-TCP
  information is chunked into packets.
  tcp guarantees that our packets are recieved in order they are sent and that 
  no packets are dropped.
4. The Applicaion Layer = HTTP hypertext transfer protocol
a client server protocol. To make request  we use http verbs.
A GET request. request has no body.

a request must contain a header and osmetines it has a body tooo.
then we get back a status code.

200- OK
404- error on part of client(a malformed request)
500- server error
GET 
POST
PUT 
DELETE
= CRUD (create, read,    , delete)



built a guestbook server:

require 'sinatra'
require 'pry'

get "/" do
  name = "BANANAS"
  "Hello World #{name}"
end

get "/memories/:enjoy_weber/:name" do
  if params[:enjoy_weber] == "yes"
    "#{params[:name]} enjoys ALW."
  else
    "Nvm"
  end
end

# Create
# Read
# Update
# Destroy
# Guest Book entries

guest_book = { 1 => "Jeff", 2 => "PJ", 3 => "Peter" }

# GET /guest_book 
# List of all people who have ever registered
# "These people have registered: Jeff, PJ, Peter"

# { 1 => "Jeff", 2 => "PJ", 3 => "Peter" }

# Index

get "/guest_book" do
  names = guest_book.values.join(", ")
  "These people have registered: #{names}"
end

# Show (just one entry)
# I know the key (or the id)

get "/guest_book/:id" do
  id = params[:id].to_i
  entry = guest_book[id]

  if entry
    entry
  else
    "NONE FOUND SILLY!"
  end
end

# GET /guest_book/1

# POST /guest_book
# Create a new entry in the `guest_book` hash
# Each entry should have a unique id

post "/guest_book" do
  last_id = guest_book.keys.max
  guest_book[last_id + 1] = params[:name]
end

# Expect params[:name] == new_name
put "/guest_book/:id" do
  id = params[:id].to_i
  guest_book[id] = params[:name]
end

delete "/guest_book/:id" do
  id = params[:id].to_i
  guest_book.delete(id)
end











ॐ  ~  curl localhost:4567/guest_book -X POST -F name=Davis
Davisॐ  ~  curl localhost:4567/guest_book/3 -X PUT -F scaramush
Warning: Illegally formatted input field!
curl: option -F: is badly used here
curl: try 'curl --help' or 'curl --manual' for more information
ॐ  ~  curl localhost:4567/guest_book/3 Scaramush
Petercurl: (6) Could not resolve host: Scaramush; nodename nor servname provided, or not known
ॐ  ~  curl localhost:4567/guest_book/3 -X PUT -F name  = scaramush
Warning: Illegally formatted input field!
curl: option -F: is badly used here
curl: try 'curl --help' or 'curl --manual' for more information
ॐ  ~  curl localhost:4567/guest_book/3 -X PUT -F name=Scaramush
Scaramushॐ  ~  

######################holding stufff#################

"\n \n \n \n"
  "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  calculation_chosen = gets.chomp.downcase
  puts "give me first number"
    num1 = gets.chomp.to_i
    puts "give me second number"
    num2 = gets.chomp.to_i
  if calculation_chosen == "a" 
    answer = num1+num2 
  elsif calculation_chosen =="b"
    answer = num1-num2
  elsif calculation_chosen =="m"
    answer = num1*num2
  else 
    answer = num1/num2
  end
print "Your answer is: #{answer}"
puts "   Now what do you want to do?"
response = menu

end








