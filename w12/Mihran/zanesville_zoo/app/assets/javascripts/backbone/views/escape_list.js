// **********    ESCAPE (LIST) VIEW     **********
// This is the view controller that describes the
// interaction with an escape on the page, its ren-
// dering and removal.
//
ZooApp.Views.EscapeList = Backbone.View.extend({
  tagName:   "ul", // will be a hook for child views...
  className: "view escape list-view",

  initialize: function() {
    console.log("Initialized EscapeListView...");

    this.listenTo(this.collection, "add",  this.addOne);
    this.listenTo(this.collection, "reset", this.render);
  },
  render: function(){
    console.log("Rendering EscapeListView...");
    this.$el.html("<h3>Roaming the streets of Ohio are now:</h3>");
  },

  addOne: function(exhibit) {
    console.log("EscapeListView#addOne...");

    var view = new ZooApp.Views.Exhibit({model: exhibit});
    this.$el.append(view.el);
  }
});



