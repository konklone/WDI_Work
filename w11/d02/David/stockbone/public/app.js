var StockRouter = Backbone.Router.extend({
  routes: {
    "stock/:symbol": "getStock"
  },

  getStock: function(stock) {
    //console.log("from router " + symbol);
    var stock = new StockView( {symbol: stock} );
  }
});

new StockRouter();

Backbone.history.start();

var FormView = Backbone.View.extend({
  el: "form",

  events: {
    "submit": "getFormValues"
  },

  getFormValues: function(e) {
    e.preventDefault();
    var symbol = this.$el.find("input[name='symbol']").val();
    console.log("from view " + symbol);
    Backbone.history.navigate( "stock/" + symbol, {trigger: true} );
  }
});

var form = new FormView();


var StockView = Backbone.View.extend({
  tagName: "div",

  template: _.template( $("script[type='text/html']").html() ),

  initialize: function(opts) {
    $('body').append(this.$el);
    this.symbol = opts.symbol;
    this.render();
    this.fetchPrice();
  },

  render: function() {
    var compiledTemplate = this.template();
    this.$el.html(compiledTemplate);
  },

  fetchPrice: function() {
    $.ajax({
      method: "GET",
      url: "price?shmee=" + this.symbol,
      dataType: "JSON",
      success: this.receiveSymbol,
      context: this
    });
  },

  receiveSymbol: function(stockObj) {
    this.price = JSON.parse(stockObj).Data.LastPrice;
    this.render();
  }
});
