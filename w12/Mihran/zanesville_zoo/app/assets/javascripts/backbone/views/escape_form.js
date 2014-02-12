// **********     ESCAPE (FORM) VIEW      **********
// This is the view controller that describes the
// interaction with the form for the escape list.
//
ZooApp.Views.EscapeForm = Backbone.View.extend({

  initialize: function() {
    console.log("Initialized EscapeFormView...");

    this.$el.addClass( "view escape form-view" );
    this.$el.find("button").text( _.sample(this.foolishMistakes) );
  },

  events: {
    "submit": "addEscape"
  },

  foolishMistakes: ["Doze Off...","Cigarette Break...",
                    "Sext a Coworker...","Shop Online...",
                    "Spill Coffee...","Read Want Ads..."],

  addEscape: function(e) {
    console.log("EscapeFormView#addEscape...");

    alert("You fool! There's been an escape!");
    this.$el.find("button").text( _.sample(this.foolishMistakes) );

    e.preventDefault();
    Backbone.history.navigate("escape!", {trigger: true});
  }
});
