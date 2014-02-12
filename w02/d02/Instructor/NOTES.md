# Morning Exercises & Sharing

(Peter)

# Before Lunch

**(PJ)**

## Framing

* What we learned yesterday, Ruby every day, and what to get used to going forward
   * Ruby wrap-up
      * modules
      * enumerable module, enumerations
   * The web and how it works
      * Internet Protocol Suite
      * HTTP Requests
   * Sinatra, and beginning web development
* What we are going to learn today, and this week
   * Today: HTML & CSS basics, and how to create templates where we embed Ruby into web pages
   * This week: more HTML, CSS and dynamic page generation; intro to persistent storage with files, and finally managing authorization over the web and using web-based APIs
   * Forever: Ruby! 
* Why are we learning about the web
   * You're all here to be web developers
   * Why is web development a thing?
      * Interoperability and ease of use, accessibility, universality of Internet access and of the Browser as a interaction system, distribution of computing resources for efficient delivery of services, etc. etc.
* How we structure a program that delivers a service over the internet
   * CRUD / Post, Get, Put, Delete / SQL variant Insert, Select, Update, Delete
   * Client / Server model, distributed model
   * Persistent storage, identification/authorization, and 
   * MVC and Web Core Standards
   * At it's heart it's about the fact that the user wants your data, you want the user's data, and both of you want it delivered fast and easily
      * How is that data passed? In it's most basic form, via the requests: either in the URL itself, or via "POST" parameters, and in the page itself that is returned (small up, big down)

## The Web
* **Break down the URL**
   * protocol
   * domain name (or IP address)
   * (port, or TCP/UDP port) -- type of application
   * path
   * query string
* **Frank discussion of HTML styles**
* **CSS and tables**
* **Javascript**
* **REST and the rest**
   * query strings

## Basic Websites
* From the point of view of the client
   * A lot of text and a few resources, that is rebuilt according to specified rules, in to a web page
* From the point of view of the server
   * A series of data strings stuck together and sent to a web server based on a web request supplied with a few parameters
* HTML and a simple server (Apache), vs RESTful Sinatra, Rails, et al

#### HTML

* Code in html (and open [example.com](http://example.com) browser)
   * tags and metadata
* Copy and download the code, examine
   * Head element
   * Comment tags: `<!-- -->` (around CSS)
   * Block Elements: 
      * sections: `<body>` (or `<header>`, `<footer>`)
      * headers: `<hN>`
      * paragraphs: `<p>`
      * lists: `<ul>` and `<ol>`, `<li>`
      * basic division: `<div>`
   * Inline Elements:
      * mostly text-based
      * links: `<a>`
   * Inline-Block Elements:
      * `<img>`
* HTML Exercise
   * Write a simple page that has all of the necessary components, and will serve as a basic personal profile
   * Header with a welcome message
   * Footer with a "made by" message
   * Two divs: `basic-info` and `statement`
   * basic-info: image, first name, last name, birthdate, home, pet(s) as a list, favorite color
   * statement: a quick, personal statement
   *Links to new pages entitled "Info Page: Name", subtitled "Info Type," and that shows the name, the type of info, and the piece of info
     * **Link to a statement page with all of these datapoints as a hidden "post"**
        * form: name, method='POST', action
        * input: type='hidden', name, value
        * input: type='button', value
* Basic CSS
   * Selectors: element, .class, #id
--------------

* Sinatra's back!
   * `gem install sinatra-contrib`
      * reloader, and why we didn't have you use it...
   * what's happening
      * (routing)
      * add html to output
      * create an html link (make sure it's after, like "/:name" and "/page2")
         * rearrange them

#Lunch

#Afternoon

#### Strings as HTML
The strings Sinatra sends to the browser can include HTML. If update our routes we can see this.

```
#### app.rb
get "/" do
  "<h1>welcome</h1><a href='/cool_dudes/mike+schmitt>A Cool Dude</a>"
end

get "/cool_dudes/:name" do
  name = params[:name]
    "<p>#{name} is a Cool Dude</p><a href='/'>Home</a>"
end
```

This renders out as HTML and now we have `h1` tags and links between our two routes. When we click on the links they make new `get` requests back to our server.

#### Views
It'd be ridiculous to include all our HTML as strings inside these routes.  We can move them to separate files and tell Sinatra to render them for us. 

The files will be HTML files, but have a `.erb` extension which stands for `Embedded Ruby`.

```
#index.erb
  <h1>welcome</h1>
  <a href='/cool_dudes/mike+schmitt'>A Cool Dude</a>
```

We don't need to wrap the HTML in strings any more and now we can format it.
Now we just have to tell Sinatra to render it by calling `erb` and passing the name of the erb file as a symbol.

```
#app.rb
get "/"
    erb :index
end
```

We'll see an error in the browser `No such file or directory - ` When we render an external file, Sinatra, by default, will look for a folder called `views`

Let's make a folder called `views` and move our files there to make them all work.

```
$ mv index.erb /views
```

#### The Embedded Ruby Parts
If we move the cool dudes string into a separate file, you'll notice the string interpolation on it won't work now.

```
# app.rb
get "/cool_dudes/:name" do
    name = params[:name]
    erb :cool_dudes
end
```

There's no magic here

```
# views/cool_dudes.erb
 <p>#{name} is a Cool Dude</p>
 <a href="/">Home</a>
```

We have to use a different type of interpolation now, the embedded ruby tags. `<%= %>`

```
# views/cool_dudes.erb
 <p><%= name %> is a Cool Dude</p>
 <a href="/">Home</a>
```

This gives us a new error `undefined local variable or method 'name'`

We have to change our varialbes now so that they'll persist between the route and the view. We do this by using instance variables instead of local variables.

```
# app.rb
get "/cool_dudes/:name" do
    @name = params[:name]
    erb :cool_dudes
end
```

```
# views/cool_dudes.erb
 <p><%= @name %> is a Cool Dude</p>
 <a href="/">Home</a>
```

#### The Layout
If we look at our rendered pages we'll see they're not full HTML pages. They're missing our standard `doctype` and `head` and `body` tags.  We can add these to a single page and let Sinatra render it on every request for us.

By default Sinatra will look in the `views` folder for a `layout.erb` file first, render that, and then render the requested `erb` file. Let's add one.

```
# views/layout.erb
<!DOCTYPE html>
<html>
<head>
  <title>Layout Template</title>
</head>
<body>
  <h1>wam</h1>
  <h1>bam</h1>
</body>
</html>
```

If we visit any route we should see `wam bam`, but we don't see our content.

#### The yield
To get our content to display inside `layout.erb`  we need to add a `<%= yield =>`

```
# views/layout.erb
<!DOCTYPE html>
<html>
<head>
  <title>Layout Template</title>
</head>
<body>
  <h1>wam</h1>
  <%= yield %>
  <h1>bam</h1>
</body>
</html>
```

Sinatra will render `layout.erb` yield to the content in `index.erb` then render the rest of `layout.erb`


#### Serving Static Pages
What if we want to add a CSS stylesheet or javascript? We don't add these to the `view` folder. Instead Sinatra serves up static files from a `public` folder.

Let's try with a simple file `cat.html`

```
 # public/cat.html
 "meow"
```

If we point our browsers to `localhost:4567/cat.html` will see `"meow"`

You'll notice the public folder isn't included in the URL. So a request to `localhost:4567/css/style.css` will serve up the page at `public/css/style.css`

#### Adding CSS
Now we can add a link to our `layout.erb` that will serve up the static css assets in our public folder.

```
# views/layout.erb
<!DOCTYPE html>
<html>
<head>
  <title>Layout Template</title>
  <link rel="stylesheet" href="/css/style.css">
</head>
<body>
  <h1>wam</h1>
  <%= yield %>
  <h1>bam</h1>
</body>
</html>
```

```
# public/style.css
 body {
   background: pink;
 }
```

# Lab