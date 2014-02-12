//#MovieRouter
var MovieRouter = Backbone.Router.extend({
  routes: {
    "search/:title" : "searchMovie" 
  },

  searchMovie: function(title){
    console.log(title);
    new SearchResultsView({ title: title });
  }
});

// ################################# START #MODELS HERE!!!!! ################################

var Movie = Backbone.Model.extend({
  default: {
    seen: false
  }
});


// ################################# START #VIEWS HERE!!!!! ################################
//#FormView
var FormView = Backbone.View.extend({
  el: "form",

  events: {
    'submit': 'submitted'
  },

  submitted: function(e) {
    e.preventDefault();
    // user's movie search input title
    var title = this.$el.find("input[name='title']").val();
  
    Backbone.history.navigate("search/" + title, {trigger: true});
  }
});

//#MovieView
var MovieView = Backbone.View.extend({
  tagName: "li",

  template: _.template($("script[type='text/html']").html()),

  initialize: function(opts){
    this.title = opts.title;
    this.$el.appendTo($(".search-results"));
    this.render();
    // this.getMovie();
  },

  render: function(){
    this.$el.html( this.template({title: this.title}) );
  }
});

//#SearchResultsView
var SearchResultsView = Backbone.View.extend({
  el: "ul",

  initialize: function(opts){
    this.title = opts.title;
    console.log("SearchResultsView INSTANTIATED");
    this.getMovies();
  },

  getMovies: function(){
    console.log("get Movies");
    // console.log(this.receiveMovies + " exists");
    var route = "/movies/search?q=" + this.title;

    $.ajax({
      error: this.errorMsg,
      method: "GET",
      url: route,
      dataType: "json",
      success: this.receiveMovies,
      context: this
    });

    
  },

  errorMsg: function(jqXHR, status) {
    console.log("error AJAX");
    console.log(jqXHR);
    console.log("status: " + status);
  },

  receiveMovies: function(movieJSON){
    // console.log("AJAX");
    this.addMovies(movieJSON);
  },

  addMovies: function(movieJSON) {
    // console.log(movieJSON.Search);
    var searchItems = movieJSON.Search;
    for(var i=0; i<searchItems.length; i++) {
      var title = searchItems[i].Title;
      // var posterURL = searchItems[i].
      // var plot = searchItems[i].
      // instantiate MovieViews for each search result
      var movie = new MovieView({title: title});
      // append each to ul
      this.$el.append(movie.el);
    }
  }
})

// ################################# START #INSTANTIATED!!!!! ################################

console.log("loaded!");

new MovieRouter();
new FormView();  
Backbone.history.start();