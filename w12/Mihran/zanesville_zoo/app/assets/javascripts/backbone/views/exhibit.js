
// **********   EXHIBIT (SINGLE) VIEW    **********
// This is the view controller that describes the
// interaction with an exhibit on the page, its ren-
// dering and removal.
//

ZooApp.Views.Exhibit = Backbone.View.extend({
  tagName:   "li",  // will hook on to an unordered list (ul), thus it should be an li
  className: "view exhibit-view", // ie green

  template: _.template( $("script[type='text/html']#cage-template").html() ),

  initialize: function() {
    console.log("Initialized ExhibitView...");

    this.listenTo(this.model, "change", this.render);
    this.listenTo(this.model, "destroy", this.remove);

    this.render();
  },
  render: function() {
    console.log("Rendering ExhibitView from JSON object: ");
    console.log(this.model.toJSON());

    this.$el.html( this.template(this.model.toJSON()) );
  }
});