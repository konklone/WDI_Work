var FormView = Backbone.View.extend({
  el: "form.new-ingredient",

  events: {
    "submit": "addIngredient"
  },

  addIngredient: function(e) {
    e.preventDefault();

    this.collection.create({title: this.$el.find("input[name='title']").val()});
  }
});

var IngredientsView = Backbone.View.extend({
  el: "ul.ingredients",

  initialize: function() {
    this.listenTo(this.collection, "add", this.addOne);
  },

  addOne: function(ingredient) {
    this.$el.append("<li>" + ingredient.get("title") + "</li>");
  }
});

var ingredients = new Backbone.Collection();

new FormView({collection: ingredients});
new IngredientsView({collection: ingredients});









