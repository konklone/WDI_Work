// **********    EXHIBIT (LIST) VIEW     **********
// This is the view controller that describes the
// interaction with an exhibit on the page, its ren-
// dering and removal.
//
ZooApp.Views.ExhibitList = Backbone.View.extend({
  tagName:   "ul", // will be a hook for child views...
  className: "view exhibit list-view clear",

  initialize: function() {
    console.log("Initialized ExhibitListView...");

    this.listenTo(this.collection, "add",  this.addOne);
    this.listenTo(this.collection, "reset", this.addAll);
    this.addAll();
  },

  addAll: function() {
    console.log("ExhibitListView#addAll...");

    this.$el.html("");
    this.collection.each(this.addOne, this);
  },
  addOne: function(exhibit) {
    console.log("ExhibitListView#addOne...");

    var view = new ZooApp.Views.Exhibit({model: exhibit});
    this.$el.append(view.el);
  }
});
