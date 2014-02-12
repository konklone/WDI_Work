var PlayingAroundRouter = Backbone.Router.extend({
  routes: {
    "clowns": "clownsSayHi",
    "kittens/:height/:width": "placeKitten"
  }, 

  clownsSayHi: function() {
    alert("HELLO ADULTS");
  },

  placeKitten: function(height, width) {
    $("<img>")
    .attr("src", "http://placekitten.com/" + height + "/" + width)
    .appendTo($("body"));
  }
});

new PlayingAroundRouter();

var WeatherRouter = Backbone.Router.extend({
  routes: {
    "weather/:state/:city": "getWeather"
  },

  // parameters received from url, in order
  getWeather: function(state, city) {
    // everytime weather route is hit, initialize new weather view
    new WeatherView({state: state, city: city});
  }
});

new WeatherRouter();

var FormView = Backbone.View.extend({
  el: "form", //same as $("form"), uses jQuery

  // define events for element
  events: {
    "submit": "wasSubmited"
  },

  wasSubmited: function(e) {
    e.preventDefault();

    var city = this.$el.find("input[name='city']").val();
    var state = this.$el.find("input[name='state']").val();
    
    // set route & trigger function associated w/ route
      // trigger: true is needed to run attached method
      // if not then only apply cosmetic change to url
    Backbone.history.navigate("weather/" + state + "/" + city, {trigger: true});
  }
});

var formView = new FormView();

var WeatherView = Backbone.View.extend({
  tagName: "div",

  // grab template from inside script tag
    // NOTE: script type in html file has to be text/html
  template: _.template($("script[type='text/html']").html()),

  initialize: function(opts) { //opts is convention for passing in object w/ options
    this.city = opts.city;
    this.state = opts.state;

    this.$el.appendTo($("body"));
    this.render();
    this.fetchWeather();
  },

  render: function() {
    var compiledTemplate = this.template();
    // need parameters city & state to fill values inside template
      // template makes THIS inside script will refer to WeatherView object
    this.$el.html(compiledTemplate);
  },

  // makes ajax get request to api specified in sinatra server file
  fetchWeather: function() {
    $.ajax({
      method: "GET",
      url: "/weather?q=" + this.city + "," + this.state,
      dataType: "json",
      success: this.receiveWeather, //upon success, run method below
      context: this
    })
  },

  receiveWeather: function(weather) {
    this.temperature = (weather.main.temp - 273) * 9/5 + 32;
    // recompile & fill elemement w/ recompiled template
    this.render(); //2nd time render() is called
  }
});

// var view = new WeatherView();




Backbone.history.start();
