# HOMEWORK FOR BREAK:

1. write "unit" tests and code for the full "complex" functionality of the HungerGames app
2. create one route and controller that presents a splash page for your apps in HTML
3. deploy on Heroku
4. write a route that returns the output of the reaping (a list of Tributes), in JSON
  * you can write your own route, but "/reaping" may work…
  * you can seed the database however you like, but the census file would be a good start

--- ENRICHMENT ---

1. Go through your self-assessment. Review areas that are weak.
2. return to the Javascript labs from Week 6 and re-implement using MVC concepts (separate functions for representing the model state and the page view, and events that call each of these based on user input)
3. write routes and controllers for the Hunger Games that render JSON only (no HTML necessary), and in so far as they need input, data is sent to them as JSON (remember AJAX!):
  * Create: tributes, sponsors, rounds (at least)
  * Read: (single) district, citizen, tribute, sponsor
  * Read: (all, ie Index) districts, citizen (per district?), tribute (per district?), sponsor (per tribute?)
  * Update: tributes, sponsors, rounds (at least)
  * Destroy: (none? depends on how you want to hold historical data…)
  * custom: perform Reaping (as above), perform Preliminaries (Rating and Sponsorship), and perform Rounds
    --> return the outcome as JSON for all of these...