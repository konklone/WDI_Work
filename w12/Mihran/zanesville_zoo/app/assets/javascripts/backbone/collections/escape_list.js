// **********    ESCAPECOLLECTION      **********
// This is the collection of escapes, ie the list
// of exhibit models representing freed animals!
//
ZooApp.Collections.Escapes = Backbone.Collection.extend({
  model: ZooApp.Models.Exhibit ,

  initialize: function() {
    console.log("Initialized EscapeList...");
  }
});


