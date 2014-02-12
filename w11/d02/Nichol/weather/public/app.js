var WeatherView = Backbone.View.extend({

  tagName: "div",

  initialize: function(opts) {
    this.$el.html(this.template({state: opts.state, city: opts.city}));
    this.$el.appendto($("body"));
    //console.log (opts.city, opts.state);
  },

  template: _.template($("script[type='text/html']").html()),

});

var WeatherRouter = Backbone.Router.extend({

  routes: {
    "weather/:state/:city" : "weather"
  },

  weather: function(state, city){
    alert(state + " " + city);
    new WeatherView({state: state, city: city});
    //new WeatherView({state: state, city: city});
  }
});

var router = new WeatherRouter();
Backbone.history.start();

var FormView = Backbone.View.extend({

  el: "form",

  events: {
    "click button": "yellatme",
    "submit form": "yellatme"
  },

  yellatme: function(e) {
    e.preventDefault();
    var city = this.$el.find("input[name='city']").val();
    var state = this.$el.find("input[name='state']").val();
    console.log(city, state);
    Backbone.history.navigate("weather/" + state + "/" + city, {trigger: true});
  }

});

var formview = new FormView();