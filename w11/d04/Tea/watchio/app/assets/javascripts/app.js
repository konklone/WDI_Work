$(function(){
   //                  _
   //                 | |
   //  _ __ ___  _   _| |_ ___ _ __ ___
   // | '__/ _ \| | | | __/ _ \ '__/ __|
   // | | | (_) | |_| | ||  __/ |  \__ \
   // |_|  \___/ \__,_|\__\___|_|  |___/

  var MovieRouter = Backbone.Router.extend({
    routes: {
      "search/:title" : "createMovieSearchView"
    },
    createMovieSearchView: function(title) {
      new MovieSearchView({title: title});
      console.log(title + "whee");
    }
  });

  //                      _      _
  //                     | |    | |
  //  _ __ ___   ___   __| | ___| |___
  // | '_ ` _ \ / _ \ / _` |/ _ \ / __|
  // | | | | | | (_) | (_| |  __/ \__ \
  // |_| |_| |_|\___/ \__,_|\___|_|___/

  var Movie = Backbone.Model.extend({
    defaults: {
      seen: false
    },
    toggleSeen: function(){
      this.save({"seen": !this.get("false")});
    }
  });

  var lion = new Movie({title: "The Lion King"});

  //            _ _           _   _
  //           | | |         | | (_)
  //   ___ ___ | | | ___  ___| |_ _  ___  _ __  ___
  //  / __/ _ \| | |/ _ \/ __| __| |/ _ \| '_ \/ __|
  // | (_| (_) | | |  __/ (__| |_| | (_) | | | \__ \
  //  \___\___/|_|_|\___|\___|\__|_|\___/|_| |_|___/

  var Watchlist = Backbone.Collection.extend({
    model: Movie,
    url: 'movies'
  });

  var watchlist = new Watchlist();

  //        _
  //       (_)
  // __   ___  _____      _____
  // \ \ / / |/ _ \ \ /\ / / __|
  //  \ V /| |  __/\ V  V /\__ \
  //   \_/ |_|\___| \_/\_/ |___/

  var FormView = Backbone.View.extend({
    el: "form",
    events: {
      "submit": "searchMovie"
    },
    searchMovie: function(e) {
      e.preventDefault();
      var title = this.$el.find("input[name='title']").val();
      // console.log(title);
      Backbone.history.navigate("search/" + title, {trigger: true});
    }
  });

  var MovieSearchView = Backbone.View.extend({
    // template: _.template($("script[type='text/html']").html()),
    initialize: function(opts) {
      this.title = opts.title;
      this.$el.appendTo($("body"));
      this.fetchMovieIDs();
    },

    fetchMovieIDs: function(){
      $.getJSON("http://www.omdbapi.com/?s=" + this.title, this.receiveID);
    },

    // fetchMovieData: function(){
    //    $.getJSON("http://www.omdbapi.com/?i=" + this, function(){console.log(response)});

    // },

    render: function(){
      var compiledTemplate = this.template();
      this.$el.html(compiledTemplate);
    },

    receiveID: function(response) {
      var movies = response.Search;
      // var i = 0;
      var myMatches = [];
      _.each(movies, function(film){
        $.getJSON("http://www.omdbapi.com/?i=" + film.imdbID, function(somedata){
          movie = new Movie({title: somedata.Title, poster: somedata.Poster, plot: somedata.Plot});
          console.log(movie);
          new IndividualMovieView(movie);
        }, this);
      }, this)
      // console.log(movie);
      // console.log(myMatches);
      // var arrayData = _.map(arrayIDs, fetchMovieData());
      // console.log(arrayData);
    }

    // receiveMovie: function() {

    // }
  })

  var IndividualMovieView = Backbone.View.extend({
    tagName: "div",
    template: _.template($("script[type='text/html']").html()),
    initialize: function(movie) {
      console.log(movie);
      this.movieObject = movie;
      this.$el.appendTo($("body"));
      this.title = movie.get("title");
      this.poster = movie.get("poster");
      this.plot = movie.get("plot");
      // this.movie = movie;
      this.render();
    },
    render: function(){
      var compiledTemplate = this.template();
      this.$el.html(compiledTemplate);
    },

    events: {
      "click button.add": "addToWatchlist",
      "click button.seen" : "checkSeen"
    },

    check: function() {
      console.log("Happy puppy");
    },

    addToWatchlist: function(){
      watchlist.add(this.movieObject);
      console.log(watchlist.models);
      var watchlistView = new WatchlistView(this.movieObject);
    },
    checkSeen: function(){
      // this.model.toggleSeen();
      this.movieObject.toggleSeen();
    }
  })
  var WatchlistView = Backbone.View.extend({
    tagName: "div",
    template: _.template("<h1>my watchlist</h1>"),
    initialize: function(movie) {
      console.log(movie);
      this.movieObject = movie;
      this.$el.appendTo($("body"));
      this.title = movie.get("title");
      this.poster = movie.get("poster");
      this.plot = movie.get("plot");
      // this.movie = movie;
      this.render();
    },
    render: function(){
      var compiledTemplate = this.template();
      this.$el.html(compiledTemplate);
    }
  })
//   ___  _____     ___    __    ____    ___  ____  ____     ___  _____ /\
//  / __)(  _  )   / __)  /__\  (  _ \  / __)( ___)(_  _)   / __)(  _  ))(
// ( (_-. )(_)(   ( (_-. /(__)\  )(_) )( (_-. )__)   )(    ( (_-. )(_)( \/
//  \___/(_____)   \___/(__)(__)(____/  \___/(____) (__)    \___/(_____)()

  movieRouter = new MovieRouter();
  formView = new FormView();
})

Backbone.history.start();
