REST is new way of linking pages and creating pages
it is NOT files!

HTTP/TCP/IP

RSET ---> HTTP
is a string being sent back and forth
HTTP request has 2 components client-HEAD & BODY > server-HEAD & BODY
VERBS=           PATH= /something

*PATHS always go into the request HEAD*

GET   getting a resouce on a server    GET resources on a server a Host - A Resouce, A Sub-Resource
POST  creating a resource on a server                          
PUT
DELETE

Lets create:
/stocks?symbol=GOOG
will return the stock price

person will only pass a parameter : the stock symbol (user will only be comnsuming)
parameter or query string

          request 
 head       PATH
           VERB
         query params

 body      params


 HTML forms supports only GET and POST
 now to not have to go back to the last page we put a new form on our page2

 Persistent Storage
 files and DB

 RUBY CLASS CALLED FILE

 ASIDE : using file through pry creating and subling it :
 2] pry(main)> file = File.new("storage.txt","w")
=> #<File:storage.txt>
[3] pry(main)> file.class
=> File
[4] pry(main)> file.puts "Bamalama"
=> nil
[5] pry(main)> file.close
=> nil
[6] pry(main)> ^D
ॐ  ~/dev/WDI_NYC_Array_Work/w02/d04/Maria/files w2d4[!?]
$ subl storage.txt


FILE IS A COLLECTION OF LINES (an array of lines)

file = File.new is just creating a new instance of the file

pry(main)> file.each do |line|
[3] pry(main)*   puts line
[3] pry(main)* end  
=> #<File:storage.txt>
[4] pry(main)> file = File.new("storage.txt", "r")
=> #<File:storage.txt>
[5] pry(main)> file.each do |line|
[5] pry(main)*   puts line
[5] pry(main)* end  
Bamalama
=> #<File:storage.txt>
[6] pry(main)> file.close

ALWAYS CLOSE THE FILE!!!

a+ means read AND write and start at the END OF THE FILE
r permission is just read

[12] pry(main)> file = File.new("storage.txt", "a+")
=> #<File:storage.txt>
[13] pry(main)> file.read
=> "Bamalama\nShakalaka\n"
[14] pry(main)> file = File.new("storage.txt", "a+")
=> #<File:storage.txt>
[15] pry(main)> file.puts "Wamalama"
=> nil
[16] pry(main)> file.read
=> ""
[17] pry(main)> file.close
=> nil
[18] pry(main)> 





