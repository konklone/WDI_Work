// **********    EXHIBIT COLLECTION      **********
// This is the collection of exhibits, ie the list
// of exhibit models.
//

ZooApp.Collections.Exhibits = Backbone.Collection.extend({
  model: ZooApp.Models.Exhibit,

  initialize: function() {
    console.log("Initialized ExhibitList...");
  }
});