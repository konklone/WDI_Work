var foo = []

var StockRouter = Backbone.Router.extend({
	routes: {
		"stock/:stockSymbol": "stockCheck"
	},

	stockCheck: function(symbol) {
		new StockView({symbol: symbol});
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
		inputField = this.$el.find("input[name='symbol']");
		var stockSymbol = inputField.val();
		Backbone.history.navigate("stock/" + stockSymbol, {trigger: true});
		inputField.val('');
	}
});

var formView = new FormView();


var StockView = Backbone.View.extend({
	tagName: "div",

	template: _.template($("script[type='text/html']").html()),

	initialize: function(opts) {
		this.symbol = opts.symbol;
    	this.$el.appendTo($("body"));
    	this.render();
    	this.fetchStock();
	},

	render: function() {
		var compiledTemplate = this.template();
		this.$el.html(compiledTemplate)
	},

	fetchStock: function() {
		$.ajax({
			method: "GET",
			url: "/price?q=" + this.symbol,
			dataType: "json",
			success: this.recieveStock,
			context: this
		});
	},

	recieveStock: function(stock) {
		// console.log(stock.Data.LastPrice);
		this.price = stock.Data.LastPrice;
		this.render();
	}
});

Backbone.history.start();