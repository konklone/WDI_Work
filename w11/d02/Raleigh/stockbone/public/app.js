var StockRouter = Backbone.Router.extend({
  routes: {
    "price/:sym": "stock"
  },

  stock: function(sym) {
    new StockView({symbol: sym});
  }
});

new StockRouter();

var FormView = Backbone.View.extend({
  el: "form",

  events: {
    "submit": "isSubmitted"
  },
  
  isSubmitted: function(e) {
    e.preventDefault();
    var symbol = this.$el.find("input[name='symbol']").val();
    // console.log(symbol);
    Backbone.history.navigate("price/" + symbol, {trigger: true});
  }
});

var formView = new FormView();

var StockView = Backbone.View.extend({
  tagName: "div",

  template: _.template($("script[type='text/html']").html()),

  initialize: function(options) {
    this.symbol = options.symbol;
    this.$el.appendTo($("body"));
    this.render();
    this.getPrice();
  },

  render: function() {
    var compiledTemplate = this.template();
    this.$el.html(compiledTemplate);
  },

  getPrice: function() {
    $.ajax({
      method: "GET",
      url: "/price?q=" + this.symbol,
      dataType: "json",
      success: this.returnedPrice,
      context: this
    });
  },

  returnedPrice: function(stock) {
    this.price = stock.Data.LastPrice;
    this.render();
  }

});

Backbone.history.start();