// setup router for the stocks route
var StockRouter = Backbone.Router.extend({
  routes: {
    "stocks/:symbol": "getStockPrice"
  },

  getStockPrice: function(symbol) {
    // pass in symbol from url params
    new StockView({symbol: symbol});
  }
});

new StockRouter();

// Job: preventDefault & hash change url to custom above
var FormView = Backbone.View.extend({
  // set el as the form
  el: "form",

  events: {
    "submit": "submitted"
  },

  submitted: function(e) {
    e.preventDefault();

    // retrieve stock symbol from el's input, name: symbol
    var symbol = this.$el.find("input[name='symbol']").val();

    // hash change into route setup in StockRouter
      // need trigger: true to call associated function
    Backbone.history.navigate("stocks/" + symbol, {trigger: true});
  }
});

new FormView();

var StockView = Backbone.View.extend({
  // create blank div
  tagName: "div",

  // grab template inside script
  template: _.template($("script[type='text/html']").html()),

  // takes js object upon init; refer above to StockRouter
  initialize: function(opts) {
    this.symbol = opts.symbol; //price will be set after json

    this.$el.appendTo($("body"));
    this.render();
    this.getStock();
  },

  render: function() {
    // set the html of $el
    this.$el.html( this.template() );
  },

  getStock: function() {
    var route = "/price?q=" + this.symbol;

    $.ajax({
      method: "GET",
      url: route,
      dataType: "json",
      success: this.receiveStock,
      context: this
    })
  },

  receiveStock: function(stock) {
    console.log(stock.Data.LastPrice);
    this.price = stock.Data.LastPrice; 
    this.render();
  }
});

// begin tracking hashchange events
Backbone.history.start();