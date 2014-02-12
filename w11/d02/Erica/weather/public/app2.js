var WeatherRouter = Backbone.Router.extend({
  routes: {
    "weather/:state/:city": "weather",

  events: {
  "click .button": "updateWeather"
  },

  // instantiating a new weather view
  weather: function(state, city) {
    alert(state + " " + city)

    new WeatherView({state: state, city: city});
  },
});

new WeatherRouter();

var FormView = Backbone.View.extend({
  el: "form",
  events: {
    "submit" : "wasSubmitted"
  },
  wasClicked: function(){
    alert("YOU CLICKED THE FORM!");
  },
  wasSubmitted: function(e) {
    e.preventDefault();
    var city = this.$el.find("input[name = 'city']").val();
    var state = this.$el.find("input[name = 'state']").val();
    Backbone.history.navigate("weather/" + state + "/" + city, {trigger: true});
  }
});

var view = new FormView();

var WeatherView = Backbone.View.extend({
  tagName: "div",

  template: _.template($("script[type='text/html']").html()),

  initialize: function(options){
    this.$el.appendTo($("body"));
    this.$el.html(this.template({state: options.state, city: options.city}))
    console.log(options.state, options.city);
  }
});

var view = new WeatherView({state: })
Backbone.history.start();



