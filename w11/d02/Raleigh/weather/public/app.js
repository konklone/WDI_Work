var PlayingAroundRouter = Backbone.Router.extend({
  routes: {
    "clowns" : "clownsSayHi",
    "kittens/:height/:width" : "showKittens"
  },

  clownsSayHi: function(){
    alert("HELLO ADULTS <%:P ");
  },

  showKittens: function(height, width){
    $("<img>").attr("src", "http://placekitten.com/g/" + height + "/" + width).appendTo($("body"));
  }
});

// must instantiate the Router
new PlayingAroundRouter();

var WeatherRouter = Backbone.Router.extend({
  routes: {
    "weather/:state/:city" : "getWeather"
  },

  getWeather: function(state, city){
    // render the weather (a view)
    new WeatherView({state: state, city: city});
  }
});

new WeatherRouter();

var FormView = Backbone.View.extend({
  el: "form",

  events: {
    "submit":   "preventDefault",
  },

  preventDefault: function(e) {
    e.preventDefault();
    
    var city = this.$el.find("input[name='city']").val();
    var state = this.$el.find("input[name='state']").val();
    // console.log(city, state);

    Backbone.history.navigate("weather/" + state + "/" + city, {trigger: true});
  }
});

new FormView();

var WeatherView = Backbone.View.extend({
  tagName: "div",

  template: _.template($("script[type='text.html']").html()),

  initialize: function(options){
    var compiledTemplate = this.template({state: options.state, city: options.city});
    this.$el.html(compiledTemplate);
  }
});

Backbone.history.start();