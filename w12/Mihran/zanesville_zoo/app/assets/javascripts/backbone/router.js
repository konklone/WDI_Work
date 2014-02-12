// *************************************************
// **********         APP ROUTER          **********
// *************************************************

var ZooRouter = Backbone.Router.extend({
  routes: {
    "": "index",
    "animal/:animal/number/:number?*": "addExhibit",
    "escape!": "addEscape"
  },

  initialize: function(exhibitList, escapeList) {
    console.log("Initialized ZooRouter...");

    this.exhibitList = exhibitList;
    this.escapeList = escapeList;
  },

  index: function() {
    console.log("---> Navigated to index!");

    // initialize the overall view on an existing DOM "hook", and
    // save it as this.main
    this.main = new ZooApp.Views.Zoo({el: $("#backbone-app")});

    // load the necessary child view(s) into the overall view
    this.loadChildView(
      "exhibitListView",
      new ZooApp.Views.ExhibitList({collection: this.exhibitList})
    );
    this.loadChildView(
      "escapeListView",
      new ZooApp.Views.EscapeList({collection: this.escapeList})
    );
    this.main.$el.append( $("<div class='clear'>") ); // clear floats...
  },

  addExhibit: function(animal,number) {
    console.log("---> Navigated to addExhibit!");

    if (this.animalExists(animal, number)){
      // increment the number of animals in the exhibit
      var exhibit = this.exhibitList.findWhere({animal: animal});
      exhibit.set({
        number:
        parseInt(exhibit.get("number")) + parseInt(number)
      });
    } else {
      // add a new model to the exhibit collection
      this.exhibitList.add( new ZooApp.Models.Exhibit(number, animal) );
    }
  },

  addEscape: function() {
    console.log("---> Navigated to addEscape!");

    this.escapeList.reset();

    // make a copy of the collection to iterate over, so that if we
    // destroy elements it doesn't screw up our current index
    _.clone(this.exhibitList).each( function(exhibit) {
      var number = parseInt( exhibit.get("number") );
      var escapedNumber = Math.floor(Math.random() * (number+1));
      var animal = exhibit.get("animal");
      console.log("Of "+number+" x "+animal+", "+escapedNumber+" escaped!");

      if (escapedNumber > 0) {
       this.escapeList.add( new ZooApp.Models.Exhibit(escapedNumber, animal, "escaped") );
        if (escapedNumber == number) { // all of them escaped!
          exhibit.destroy();
        } else {                       // some of them escaped
          exhibit.set("number", number-escapedNumber);
        }
      }
    });
  },

  animalExists: function(animal, number) {
    console.log("ExhibitListView#animalExists: " + animal);

    return this.exhibitList.findWhere({animal: animal}) ? true : false;
  },

  loadChildView: function(viewName, view) {
    console.log("Router#loadChildView...");

    // remove the current child view from the DOM if it exists
    this[viewName] && this[viewName].remove();
    this[viewName] = view; // replace referenced view
    this.main.$el.append(view.el); // append it to DOM
  }

});