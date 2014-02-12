var JustJokingRouter = Backbone.Router.extend({
  routes: {
    "clowns" : "clownsSayHi",
    //add some more routes, this time with some params
    "kittens/:height/:width" : "addAKitten"
  },

   //for the love of the lord don't forget these commas!!!
  clownsSayHi: function(){
    alert("HELLO ADULTS <%;p");
  },

  addAKitten: function(height, width){
    var pic = $("<img>").attr("src", "http://placekitten.com/" + height + "/" + width); 
    var body = $("body");   
    pic.appendTo(body);
  }
});



//instantiates the router
new JustJokingRouter();




var WeatherRouter = Backbone.Router.extend({
  routes: {
    "weather/:state/:city" : "weather"
  },

  weather: function(state, city){
    var view = new WeatherView({state: state, city: city});
    //will render a view
    //render some sweet JSON stuff
  }

});


var FormView = Backbone.View.extend({
  //grab the live element from the doc
  el: "form",
 

  //these events are in relation to el
  events: {
     "submit": "printCity"
  },

  //give it an e! this way we can prevent default
  printCity: function(e){
      e.preventDefault();
      var city = this.$el.find("input[name='city']").val();
      var state = this.$el.find("input[name='state']").val();

      //this puts what you want in the browser, and trigger means do any events associated with that!
      Backbone.history.navigate("weather/" + state + "/" + city, {trigger: true});
  }
});

var WeatherView = Backbone.View.extend({
  //tells us what kind of element el is going to be
   tagName: "div",
   template: _.template($("script[type='text/html']").html()),

   initialize: function(opts){
    this.state = opts.state;
    this.city = opts.city;
    this.$el.appendTo($("body"));
    this.render();
    this.fetchWeather();
   },

   render: function(){
    var completedTempate = this.template();
    this.$el.html(completedTempate);
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


      weather = new FormView();
     




new WeatherRouter();
//now Backbone is 'listening' to changes
Backbone.history.start();

