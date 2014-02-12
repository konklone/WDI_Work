var StockRouter = Backbone.Router.extend({
  routes: {
    "price/:symbol" : "renderStockView"
  },

  renderStockView: function(symbol){
    var view = new StockView({symbol: symbol});
    //will render a view
    //render some sweet JSON stuff
  }

});


var FormView = Backbone.View.extend({
  //grab the live element from the doc
  el: "form",
 

  //these events are in relation to el
  events: {
     "submit": "getStockParam"
  },

  //give it an e! this way we can prevent default
  getStockParam: function(e){
      e.preventDefault();
      var symbol = this.$el.find("input[name='symbol']").val();

      //this puts what you want in the browser, and trigger means do any events associated with that!
      Backbone.history.navigate("price/" + symbol, {trigger: true});
  }
});

var StockView = Backbone.View.extend({
  //tells us what kind of element el is going to be
   tagName: "div",
   template: _.template($("script[type='text/html']").html()),

   initialize: function(opts){
    this.symbol = opts.symbol;
    this.$el.appendTo($("body"));
    this.render();
    this.fetchStock();
   },

   render: function(){
    var completedTemplate = this.template();
    this.$el.html(completedTemplate);
   },

    fetchStock: function() {
    $.ajax({
      method: "GET",
      url: "/price?q=" + this.symbol,
      dataType: "json",
      success: this.receiveStock,
      context: this
    });
  },

   receiveStock: function(stock) {
    console.log(stock);
    this.price = stock["Data"]["LastPrice"];
    console.log(this.price);
    this.render();
  }



});


var form = new FormView();
new StockRouter();


Backbone.history.start();



