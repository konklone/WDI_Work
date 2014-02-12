var StockRouter = Backbone.Router.extend({
  routes: {
    "stock/:price": "symbol"
  },

  stock: function(symbol, price) {
    new StockView({symbol: symbol, price: price});
  }
});

new StockRouter();

var FormView = Backbone.View.extend({
  el: "form",
  events: {
    "submit": "wasSubmitted"
  },
  wasSubmitted: function(e) {
    e.preventDefault();
    var symbol = this.$el.find("input[name='symbol']").val();
    var price = this.$el.find("input[name='price']").val();
    Backbone.history.navigate("stock/" + symbol + "/" + price, {trigger: true});
  }
});

var formView = new FormView();

var StockView = Backbone.View.extend({
  tagName: "div",

  template: _.template($("script[type='text/html']").html()),

  initialize: function(opts) {
    this.symbol = opts.symbol;
    this.price = opts.price;
    this.$el.appendTo($("body"));
    this.render();
    this.fetchStock();
  },

  render: function() {
    var compiledTemplate = this.template();
    this.$el.html(compliedTemplate);
  },

  fetchStock: function() {
    $.ajax({
    method: "GET",
    url: "/stock?q=" + this.symbol + "," + this.price,
    dataType: "json",
    success: this.receiveStock,
    context: this
   });
  },

  receiveStock: function(stock) {

    this.render();
  }

});

Backbone.history.start();
