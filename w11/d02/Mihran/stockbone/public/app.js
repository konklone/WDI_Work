var StockRouter = Backbone.Router.extend({
  routes: {
    "stocks/:symbol": "stockValue" 
  },

  stockValue: function(stock){
    new StockView({symbol: stock});
  }
});

var FormView = Backbone.View.extend({
  el: "form",
  events: {
    "submit": "wasSubmitted"
  },

  wasSubmitted: function(e) {
    e.preventDefault();
    var symbol = this.$el.find("input[name='symbol']").val();
    Backbone.history.navigate("stocks/" + symbol , {trigger: true});
    //we're writing a custom URL ^^^ 
  }
});

var StockView = Backbone.View.extend({
  tagName: "div",
  template: _.template($("script[type='text/html']").html()),

  initialize: function(opts){
    this.symbol = opts.symbol;
    this.$el.appendTo($("body"));
    this.render();
  },

  render: function() {
    var compiledTemplate = this.template({price: this.price, colour: this.colour});
    this.$el.html(compiledTemplate);
    this.fetchStock();
  },

  fetchStock: function(){
    $.ajax({
      method: "GET",
      url: "/price?q=" + this.symbol,
      dataType: "json",
      success: this.receiveStock,
      context: this
    });
  },

  receiveStock: function(stockJson){
    this.price = stockJson.Data.LastPrice;
    this.change = stockJson.Data.Change;
    if (this.change > 0) {
      this.colour = "green"
    }
    else {
      this.colour = "red"
    };
    this.render();
  }
})

new FormView();
new StockRouter();
Backbone.history.start();