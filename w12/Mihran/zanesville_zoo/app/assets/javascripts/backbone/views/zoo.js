// *************************************************
// **********       (/#)  ZOO VIEW        **********
// *************************************************

// This is an overarching view controller for the
// the page, on which we interact with the exhibits.
//
ZooApp.Views.Zoo = Backbone.View.extend({
  initialize: function() {
    console.log("Initialized ZooView...");

    // initialize form child views on an existing DOM "hook"
    this.exhibitForm = new ZooApp.Views.ExhibitForm({el: "form#exhibit"});
    this.escapeForm = new ZooApp.Views.EscapeForm({el: "form#escape"});
    this.$el.addClass( "view zoo-view" );
  }
});

