var StockRouter = Backbone.Router.extend({
	routes: {
		"price/:symbol" : "stockIt"
	},
	stockIt: function(symbol){
		new StockView({symbol: symbol});
	}
});

	FormView = Backbone.View.extend({
		el: "form",
		events: {
			"submit": "submitting",
		},
		submitting: function(e){
			e.preventDefault();
			var stockSymbol =  this.$el.find("input[name='symbol']").val();
			Backbone.history.navigate("price/"+ stockSymbol, {trigger: true});
		}
	});

StockView = Backbone.View.extend({
	tagName: "div",
	className: "stocks",
	template: _.template( $("script[type='text/html']").html() ),
	initialize: function(opts){
		this.symbol = opts.symbol;
		this.$el.appendTo($("body"));
		this.render();
		this.getPrice();
	},

	render: function(){
		var stockTemplate = this.template({symbol: this.symbol, colour: this.colour});
		this.$el.html(stockTemplate);
	},

	getPrice: function(){
		Backbone.ajax({
			method: "GET",
			url: "/price?q="+this.symbol,
			dataType: "json",
			success: this.showPrice,
			context:this
		});
	},
	showPrice: function(prices){
		var results = $.parseJSON(prices)['Data'];
		this.corp = results['Name'];
		this.price = results['LastPrice'];
		this.colour = (results['ChangePercent'] > 0) ? "green" : "red";
		this.render();
	}
})




new StockRouter();
new FormView();
Backbone.history.start();