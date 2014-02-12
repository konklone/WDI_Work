//first I will create the route!
var StockRouter = Backbone.Router.extend({
  routes: {
    "stock/:symbol": "stock"
  },

  stock: function(stock) {
    // render a view
    new StockView({symbol: stock});//passing the JSobject (key valuepair kindof)with
  }
});
//create the instance of route!
new StockRouter();

//create my stock Form view connecting the form/submit button/URL
var FormView = Backbone.View.extend({
  el: "form",
  events: {
    "submit": "wasSubmitted"
  },
  wasSubmitted: function(e) {
    console.log("FORM SUBMITTED!");
    e.preventDefault();
    var symbol = this.$el.find("input[name='symbol']").val();
    Backbone.history.navigate("stock/" + symbol);
  }
});

var formView = new FormView();

//create the stock view to put on dom w/template
var StockView = Backbone.View.extend({
  tagName: "div",

  template: _.template($("script[type='text/html']").html()),

  initialize: function(syms) {//syms is the entire js object that was instantiated above
    this.symbol = syms.symbol;
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
      url: "/price?q=" + this.symbol,
      dataType: "json",
      success: this.receiveStock,
      context: this
    });
    // var route = "/price?q=" + this.symbol;
    // $.get( route, receiveStock(stock) );
  },

  receiveStock: function(stock) {
    console.log(stock);
    this.price = (JSON.parse(stock))["Data"]["LastPrice"];
    console.log(this.price);
    this.render();
  }

});


Backbone.history.start();
