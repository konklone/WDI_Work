#Movies.io

* GET "/" => "Welcome to Movies.io", this page links to "/movies/search"

* GET "/movies/search" => Displays a form for new movies. Input for a movie title.

* POST "/movies" => Fetches movie data from OMDB and saves the title, year, and poster src as a CSV to movies.txt(and assign it a unique id) AND redirect the user to `movie/id`
  * You'll need to make an http request to get the movie info
  * You'll need to count the number of lines in the file to figure out what id to assign the entry
  * You'll need to add your entry as a CSV to movies.txt
  * You should redirect to `movie/id` after your information has been posted

* GET "/movies" => Print out information for all the movies. For each one, display the title, year and poster img.
  * Using a erb "partial" here for a single movie may help you here to keep your code DRY. You'll be able to render that same erb template for EACH movie that you have to display.

* GET "/movies/:id" => Show a particular movie. Again, display the title, year and poster img.

Your CSV should look something like this:

```
1,Up,2009,http://ia.media-imdb.com/images/M/MV5BMTMwODg0NDY1Nl5BMl5BanBnXkFtZTcwMjkwNTgyMg@@._V1_SX300.jpg
2,Finding Nemo,2003,http://ia.media-imdb.com/images/M/MV5BMTY1MTg1NDAxOV5BMl5BanBnXkFtZTcwMjg1MDI5Nw@@._V1_SX300.jpg
3,Toy Story 3,2010,http://ia.media-imdb.com/images/M/MV5BMTgxOTY4Mjc0MF5BMl5BanBnXkFtZTcwNTA4MDQyMw@@._V1_SX300.jpg
```