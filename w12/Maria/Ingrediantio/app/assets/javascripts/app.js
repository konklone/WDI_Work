var FormView = Backbone.VIew.extend({
  el: "form.new-ingredient"

  events {
    "submit": "addIngredient"
  },

  addIngredient: function(e) {
    e.preventDefault();

    this.collection.create({title: e.target.elements['title'].value
    });
  }
});