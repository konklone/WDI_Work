var PlayingAroundRouter = Backbone.Router.extend({
  routes: {
    "clowns" : "clownsSayHi",
    "kittens/:height/:width" : "showMeTheKittens"
  },

  clownsSayHi: function() {
    alert("HELLO ADULTS <%:b");
  },

  showMeTheKittens: function(height, width) {
    $("<img>")
      .attr("src", "http://placekitten.com/" + height + "/" + width)
      .appendTo($("body"));
  }
});

new PlayingAroundRouter();


var WeatherRouter = Backbone.Router.extend({
  routes: {
    "weather/:state/:city": "weather"
  },

  weather: function(state, city) {
    // something, somehow render some stuff
    // PROBABLY (yes, definitely) render a view
    new WeatherView({state: state, city: city});
  }
});

new WeatherRouter();

var FormView = Backbone.View.extend({
  el: "form",
  events: {
    "submit": "wasSubmitted"
  },
  wasSubmitted: function(e) {
    e.preventDefault();
    var city = this.$el.find("input[name='city']").val();
    var state = this.$el.find("input[name='state']").val();
    Backbone.history.navigate("weather/" + state + "/" + city, {trigger: true});
  }
});

var formView = new FormView();

var WeatherView = Backbone.View.extend({
  tagName: "div",

  template: _.template($("script[type='text/html']").html()),

  initialize: function(opts) {
    this.state = opts.state;
    this.city = opts.city;
    this.$el.appendTo($("body"));
    this.render();
    this.fetchWeather();
  },

  render: function() {
    var compiledTemplate = this.template();
    this.$el.html(compiledTemplate);
  },

  fetchWeather: function() {
    $.ajax({
      method: "GET",
      url: "/weather?q=" + this.city + "," + this.state,
      dataType: "json",
      success: this.receiveWeather,
      context: this
    });
  },

  receiveWeather: function(weather) {
    this.temperature = (weather.main.temp - 273) * 9/5 + 32;
    this.render();
  }

});

//var view = new WeatherView({state: "California", city: "Pasadena"});


Backbone.history.start();