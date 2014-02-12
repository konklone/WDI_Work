
var StockView = Backbone.View.extend({
  tagName: "div",

  template: _.template($("script[type='text/html']").html()),

  initialize: function(opts) {
    this.ticker = opts.ticker;
    this.$el.appendTo($("body"));
    this.render();
    this.fetchStock();
  },

  render: function() {
    var compiledTemplate = this.template();
    this.$el.html(compiledTemplate);
  },

  fetchStock: function() {
    $.ajax({
      method: "GET",
      url: "/price?q=" + this.ticker,
      dataType: "json",
      success: this.receiveStock,
      context: this
    });
  },

  receiveStock: function(stock) {
    this.price = stock.Data.LastPrice
    this.render();
  }
});

var StockRouter = Backbone.Router.extend ({
  routes: {
    "stocks/:ticker" : "ticker"
  },

  ticker: function(symbol) {
    new StockView({ticker: symbol});
  }

});

new StockRouter();
Backbone.history.start();

var FormView = Backbone.View.extend({
  el: "form",
  
  events: {
    "submit": "wasSubmitted"
  },
  
  wasSubmitted: function(e){
    e.preventDefault();
    var ticker = this.$el.find("input[name='symbol']").val();
    Backbone.history.navigate("stocks/" + ticker, {trigger: true});
  }

});

var formView = new FormView();

var StockView = Backbone.view.extend({
  tagName: "div",

  template: _.template($("script[type='text/html']").html()),

  initialize: function(opts) {
    this.ticker = opts.ticker;
    this.$el.appendTo($("body"));
    this.render();
    this.fetchStock();
  },

  render: function() {
    var compiledTemplate = this.template();
    this.$el.html(compiledTemplate);
  },

  fetchStock: function() {
    $.ajax({
      method: "GET",
      url: "/price?q=" + this.ticker,
      dataType: "json",
      success: this.receiveStock,
      context: this
    });
  },

  receiveStock: function(stock) {
    console.log("this should be the price") 
    this.render();
  }
});

//****************************

//   receiveWeather: function(weather) {
//     this.temperature = (weather.main.temp - 273) * 9/5 + 32;
//     this.render();
//   }

// });














