var StockView = Backbone.View.extend({
  tagName: "div",

  render: function() {
    $(this.el).html(this.template());
  },

  initialize: function(opts) {
    this.symbol = opts["symbol"];

    $("body").append(this.el);
    this.fetchPrice();
    this.render();
  },

  fetchPrice: function() {
    $.ajax({  
      url: "/price?q=" + encodeURI(this.symbol),
      method: "GET",
      dataType: "json",
      success: this.receivePrice,
      context: this
    });
  },

  receivePrice: function(price) {
    this.price = JSON.parse(price).Data.LastPrice;
    this.render();
  },

  template: _.template($("script[type='text/html'].price").html())
});

var FormView = Backbone.View.extend({
  el: "form",

  events: {
    "submit": "processForm"
  },

  processForm: function(e) {
    e.preventDefault();
    var symbol = this.$el.find("input[name=symbol]").val();
    Backbone.history.navigate("/price/" + encodeURI(symbol), {trigger: true});
  }
});

var StockRouter = Backbone.Router.extend({
  routes: {
    'price/:symbol' : 'price',
  },

  price: function (symbol) {
    new StockView({symbol: symbol})
  },
});

var appRouter = new StockRouter();
var formView = new FormView();
Backbone.history.start();




