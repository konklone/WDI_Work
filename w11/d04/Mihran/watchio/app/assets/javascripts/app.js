/*
__________ ________   ____ ___________________________________ 
\______   \\_____  \ |    |   \__    ___/\_   _____/\______   \
 |       _/ /   |   \|    |   / |    |    |    __)_  |       _/
 |    |   \/    |    \    |  /  |    |    |        \ |    |   \
 |____|_  /\_______  /______/   |____|   /_______  / |____|_  /
        \/         \/                            \/         \/ 
*/

// var MovieRouter = Backbone.Router.extend({
  
//   routes: {
//     "movies" : "createMovie"
//   },

//   createMovie: function(){
//   }

// });

/*
   _____             .___     .__          
  /     \   ____   __| _/____ |  |   ______
 /  \ /  \ /  _ \ / __ |/ __ \|  |  /  ___/
/    Y    (  <_> ) /_/ \  ___/|  |__\___ \ 
\____|__  /\____/\____ |\___  >____/____  >
        \/            \/    \/          \/ 
*/

var Movie = Backbone.Model.extend({
  defaults: {
    seen: false,
  },
});

/*
_________        .__  .__                 __  .__                      
\_   ___ \  ____ |  | |  |   ____   _____/  |_|__| ____   ____   ______
/    \  \/ /  _ \|  | |  | _/ __ \_/ ___\   __\  |/  _ \ /    \ /  ___/
\     \___(  <_> )  |_|  |_\  ___/\  \___|  | |  (  <_> )   |  \\___ \ 
 \______  /\____/|____/____/\___  >\___  >__| |__|\____/|___|  /____  >
        \/                      \/     \/                    \/     \/ 
*/

var WatchList = Backbone.Collection.extend({
  model: Movie,
  url: "movies"
});


var ResultsList = Backbone.Collection.extend({
  model: Movie
 });

/*
____   ____.__                     
\   \ /   /|__| ______  _  ________
 \   Y   / |  |/ __ \ \/ \/ /  ___/
  \     /  |  \  ___/\     /\___ \ 
   \___/   |__|\___  >\/\_//____  >
                   \/           \/ 
*/        

var WatchListView = Backbone.View.extend({

  el: "ol",

  initialize: function(){
    this.listenTo(this.collection, "reset", this.addAll);
    this.listenTo(this.collection, "add", this.potatoes);
  },

  potatoes: function(movie){
    var newWatchListMovieView = new MovieView({model: movie});
    this.$el.append(newWatchListMovieView.el);
  },

  addAll: function(){
    this.collection.each(this.potatoes, this);
  }

});

var FormView = Backbone.View.extend({
  el: "form",

  events: {
    "submit": "searchMovie"
  },

  searchMovie: function(e) {
    e.preventDefault();
    var title = this.$el.find("input[name='movie']").val();
    this.fetchMovies(title);
    this.el.reset();
  },

  fetchMovies: function(title){
    $.ajax({
      method: "GET",
      url: "http://www.omdbapi.com/?s=" + title,
      dataType: "json",
      success: this.receiveMovies,
      context: this
    });
  },

  receiveMovies: function(responseText){
    _.each(responseText.Search, function(movie){
      // var title = movie.Title;
      // var year = movie.Year;
      var id = movie.imdbID;
      console.log(id);
      this.getPlotAndPoster(id);
      // this.collection.add({title:title});
    }, this);
  },

  getPlotAndPoster: function(id){
    $.ajax({
      method: "GET",
      url: "http://www.omdbapi.com/?i=" + id,
      dataType: "json",
      success: this.receiveMovie,
      context: this
    });
  },

  receiveMovie: function(movie){
    var title = movie.Title;
    var plot = movie.Plot;
    var poster = movie.Poster;
    // console.log(plot);
    this.collection.add({title:title, plot:plot, poster:poster});
  }
});


var ResultsView = Backbone.View.extend({
  el: "ul",

  initialize: function(){
    this.listenTo(this.collection, "add", this.addOneResult);
  },

  addOneResult: function(movie){
    // console.log("Hi")
    var newResultView = new MovieView({model: movie});
    this.$el.append(newResultView.el);
  },

});

var MovieView = Backbone.View.extend({
  tagName: "li",

  events: {
    "submit": "addMovieToWatchList"
  },

  template: _.template($("script[type='text/html']").html()),

  addMovieToWatchList: function(e){
    e.preventDefault();
    var movie = this.model.toJSON();
    var title = movie.title;
    var poster = movie.poster;
    var plot = movie.plot; 
    // console.log(title);
    watchList.create({title:title, poster:poster, plot:plot});
  },

  initialize: function(){
    // this.listenTo(this.model, "change", this.render);
    this.render();
  },

  render: function(){
    var compiledTemp = this.template(this.model.toJSON());
    this.$el.html(compiledTemp);
  }
});


/*
.___       .__  __  .__       .__  .__                __  .__               
|   | ____ |__|/  |_|__|____  |  | |__|____________ _/  |_|__| ____   ____  
|   |/    \|  \   __\  \__  \ |  | |  \___   /\__  \\   __\  |/  _ \ /    \ 
|   |   |  \  ||  | |  |/ __ \|  |_|  |/    /  / __ \|  | |  (  <_> )   |  \
|___|___|  /__||__| |__(____  /____/__/_____ \(____  /__| |__|\____/|___|  /
         \/                 \/              \/     \/                    \/ 
*/

window.onload = function(){

    // router = new MovieRouter();
    watchList = new WatchList();
    watchListView = new WatchListView({collection: watchList});

    resultsList = new ResultsList();
    form =  new FormView({collection: resultsList});
    results = new ResultsView({collection: resultsList});

    watchList.fetch({reset: true});

}

