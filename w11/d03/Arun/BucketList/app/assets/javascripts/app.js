var Activity = Backbone.Model.extend({
	defaults: {
		done: false
	},
	toggleDone: function(){
	this.save({"done": !this.get("done")});
	}
});

var BucketList = Backbone.Collection.extend({
	model: Activity,

	url: "activities"
});

var list = new BucketList();



// var skyDiving = new Activity({title: "Sky Diving"});

// list.add(skyDiving);

// This will just display on the console anytime something is added
list.on("add", function(){
		console.log(this.pluck("title"));
});
// end of console dispaly code

var FormView = Backbone.View.extend({
	el: "form",

	events: {
		"submit" : "getForm"
	},

	getForm: function(e){
		e.preventDefault();
		var title = this.$el.find("input[name='activity']").val();
		var activity = new Activity({title: title});
		var newActivity = this.collection.create(activity);
		this.el.reset();
	}
});

var ActivityView = Backbone.View.extend({
	tagName: "li",

	template: _.template($("script[type='text/html']").html()),

	events: {
		"click :checkbox" : "toggleDone",
		"click .remove" : "deleteActivity"
	},

	deleteActivity: function(){
		this.model.destroy();
	},

	toggleDone: function(){
		this.model.toggleDone();
		// this.model.set("done", !this.model.get("done"));
		// this.render();
	},

	initialize: function(){
		// this.title = this.model.get("title");
		this.listenTo(this.model, "change", this.render);
		this.listenTo(this.model, "destroy", this.remove);
		this.render();
	},

	render: function(){
		console.log(this.model.toJSON());
		var compiledTemplate = this.template(this.model.toJSON());
		console.log(compiledTemplate)
		this.$el.html(compiledTemplate);
	}
});

var ListView = Backbone.View.extend({
	el: "ul",

	initialize: function(){
		this.listenTo(this.collection, "add", this.addOne);
		this.listenTo(this.collection, "reset", this.addAll);
	},

	addOne: function(activity){
		var view = new ActivityView({model: activity});
		this.$el.append(view.el);
	},

	addAll: function(){
		this.collection.each(this.addOne, this)
	}

});
var form = new FormView({collection: list});
var theList = new ListView({collection: list});

list.fetch({reset: true});