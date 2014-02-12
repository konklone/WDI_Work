var PlayingAroundRouter = Backbone.Router.extend({
  routes: {
    "clowns" : "clownsSayHi",
    "kittens/:height/:width" : "placeKitten"
  },

  clownsSayHi: function(){
    alert("HELLO ADULTS <%:b")
  },

  placeKitten: function(height, width){
    $("<img>")
      .attr("src", "http://placekitten.com/" + height + "/" + width )
      .appendTo($("body"));
  },
});

var WeatherRouter = Backbone.Router.extend({
  routes: {
    "weather/:state/:city" : "weather"
  },

  weather: function(state, city){
    new WeatherView({state: state, city: city})
  }
});
;

var FormView = Backbone.View.extend({
  el: "form",
  events: {    
    "submit": "wasSubmitted"
  },

  wasSubmitted: function(e){
    e.preventDefault();
    var city = this.$el.find("input[name='city']").val();
    var state = this.$el.find("input[name='state']").val();
    Backbone.history.navigate("weather/" + state + "/" + city, {trigger:true})
  }
});

var view = new FormView();

var WeatherView = Backbone.View.extend({
  tagName: "div",

  template: _.template($("script[type='text/html']").html()),

  initialize: function(opts){
    this.$el.html(this.template({state: opts.state, city: opts.city}))
    this.$el.appendTo($("body"));

    console.log(opts.state, opts.city)
  },
});

new WeatherRouter();
new PlayingAroundRouter();
Backbone.history.start();

