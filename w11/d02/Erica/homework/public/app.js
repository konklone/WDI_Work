var StockRouter = Backbone.Router.extend({
  routes: {
    "stocks/:symbol" : "stock"
  },

  stock: function(shmee){
    new StockView({symbol: shmee})
  }
});

new StockRouter();

function stockAjaxxx(where, callbackBaby){
  $.ajax({
    method: "GET",
    url: "/price?q=" + where.symbol,
    dataType: "json",
    success: callbackBaby,
    context: where
  });
}

var FormView = Backbone.View.extend({
  el: "form",

  events: {
    "submit" : "wasSubmitted"
  },

  wasSubmitted: function(e){
    e.preventDefault();
    var symbol = this.$el.find("input[name = 'symbol']").val();
    Backbone.history.navigate("stocks/" + symbol, {trigger: true});
  } 
});

var formView = new FormView();

var StockView = Backbone.View.extend({
  tagName: "div",

  template: _.template($("#1").html()),

  initialize: function(opts){
    this.symbol = opts.symbol;
    this.$el.appendTo($("body"));
    this.render();
    this.fetchStock(this, this.receiveStock);
  },

  render: function() {
    var compiledTemplate = this.template();
    this.$el.html(compiledTemplate);
  },

  fetchStock: stockAjaxxx,

  receiveStock: function(stock){
    jsonObject = JSON.parse(stock);

    try {
      this.price = jsonObject.Data.LastPrice;
    } catch(error){
      if (error.name === 'TypeError') {
        this.$el.remove();
        alert(_.sample(["Nice try.", "Think we're stupid or something?", "Leave it to your broker."]));
      }
    }

    this.change = jsonObject.Data.ChangePercent;
    if(this.change >= 0){
      this.$el.addClass("up"); 
    }
    else {
      this.$el.addClass("down");
    }
    this.company = jsonObject.Data.Name;
    this.delta = ((jsonObject.Data.ChangePercentYTD * jsonObject.Data.ChangeYTD)/100).toFixed(2);
    this.openingValue = jsonObject.Data.Open;
    this.render();
  }
});


Backbone.history.start();