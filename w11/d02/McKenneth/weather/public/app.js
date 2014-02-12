var PlayRouter = Backbone.Router.extend({
	routes: {
		"clowns" : "clownsSayHi",
		"kittens/:height/:width" : "kittensYo"
	},

	clownsSayHi: function(){
		alert("Hello children")
	},
	kittensYo: function(height, width){
		$("<img src='http://placekitten.com/"+height+"/"+width+"'>").appendTo($("body"))
	}
});

var WeatherRouter = Backbone.Router.extend({
	routes: {
		"weather/:state/:city" : "weatherizeIt"
	},

	weatherizeIt: function(state, city){
		new WeatherView({state: state, city: city});
	}

});
	FormView = Backbone.View.extend({
		el: "form",
		events: {
			"submit": "submitting",
		},
		submitting: function(e){
			e.preventDefault();
			var state = this.$el.find("input[name='state']").val();
			var city = this.$el.find("input[name='city']").val();
			Backbone.history.navigate("weather/"+state+"/"+city, {trigger: true} );
			
		}
	});

	WeatherView = Backbone.View.extend({
		tagName: "div",
		className: "weather",
		template: _.template($("script[type='text/html']").html()),
		initialize: function(opts){
			this.state = opts.state;
			this.city = opts.city;
			this.$el.appendTo($("body"));
			this.render();
			this.fetchWeather();
			},
			 
			render: function(){
				var compiledTemplate = this.template({state: this.state, city: this.city});
				this.$el.html(compiledTemplate);
			},
			fetchWeather: function(){
				Backbone.ajax({
					method: "GET",
					url: "/weather?q="+this.city+","+this.state,
					dataType: "json",
					success: this.receiveWeather,
					context: this
					});
			},
			receiveWeather: function(weather){
				this.temp = (weather.main.temp - 273) * 9/5 + 32;
				this.render();
			}

		
	})


new WeatherRouter();
new FormView()

Backbone.history.start();