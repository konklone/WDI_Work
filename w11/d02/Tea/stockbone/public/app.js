var StockRouter = Backbone.Router.extend({
  routes: {
    "price/:symbol": "stock"
  },

  stock: function(sym) {
    new StockView({symbol: sym});
  }
});

new StockRouter();

var FormView = Backbone.View.extend({
  el: "form",
  events: {
    "submit": "Submitted"
  },
  Submitted: function(e) {
    e.preventDefault();
    var symbol = this.$el.find("input[name='symbol']").val();
    Backbone.history.navigate("price/" + symbol, {trigger: true});
  }
});

var formView = new FormView();

var StockView = Backbone.View.extend({
  template: _.template($("script[type='text/html']").html()),

  initialize: function(val) {
    this.stockSymbol = val.symbol;
    this.$el.appendTo($("body"));
    this.render();
    this.fetchStock();
  },

  render: function() {
    var compiledTemplate = this.template();
    this.$el.html(compiledTemplate);
  },

  fetchStock: function(){
    $.ajax({
      method: "GET",
      // path in our site relative to our current one
      url: "/price?q=" + this.stockSymbol,
      dataType: "json",
      success: this.receiveStock,
      context: this
    });
  },

  receiveStock: function(stock){
    this.company = stock.Data.Name;
    this.stockPrice = "$" + stock.Data.LastPrice;
    this.change = stock.Data.Change;
    this.success = this.change > 0;
    console.log(stock.Data);
    this.render();
  }

});

Backbone.history.start();
