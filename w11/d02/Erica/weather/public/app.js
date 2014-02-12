var WeatherRouter = Backbone.Router.extend({
  routes: {
    "clowns" : "clownssayHi",
    "kittens/:height/:width": "appendPlaceKitten" // describing dynamic parameters
  },

  clownssayHi : function() {
    alert("HELLO ADULTS ^-^");
  },

  appendPlaceKitten: function(height, width){
    $("<img>").attr("src", "http://placekitten.com/" + height + "/" + width).appendTo($("body"));
  }
});

var PlayingAroundRouter = Backbone.Router.extend({
  routes: {
    ""
  }
}

new WeatherRouter();

Backbone.history.start();




