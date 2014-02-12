var StockRouter = Backbone.Router.extend({
routes: {
  "stock/:symbol": "stock"
},

stock: function(symbol) {
  new StockView({symbol: symbol, price: this.price});
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
  Backbone.history.navigate("stock/" + symbol, {trigger: true});
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

  render: function(){
    var compiledTemplate = this.template();
    this.$el.html(compiledTemplate);
  },

  fetchStock: function() {
    $.ajax({
      method: "GET",
      url: "/stock?q=" + this.symbol,
      dataType: "json",
      success: this.receiveStock,
      context: this
    });
  },

  receiveStock: function(stock) {
    console.log(stock);
    this.price = (JSON.parse(stock))["Data"]["LastPrice"];
    console.log(this.price);
    this.render();
  }

});

Backbone.history.start();