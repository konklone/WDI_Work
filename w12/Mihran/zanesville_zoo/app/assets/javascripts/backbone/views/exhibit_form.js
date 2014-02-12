// **********    EXHIBIT (FORM) VIEW     **********
// This is the view controller that describes the
// interaction with the form for the exhibit list.
//
ZooApp.Views.ExhibitForm = Backbone.View.extend({

  initialize: function() {
    console.log("Initialized ExhibitFormView...");

    this.$el.addClass( "view exhibit form-view" );
  },

  events: {
    "submit": "addExhibit"
  },

  addExhibit: function(e) {
    console.log("ExhibitFormView#addExhibit...");

    e.preventDefault();
    var animal = _(this.$el.find("input[name='animal']").val())
                  .chain().trim().capitalize().value();
    var number = this.$el.find("select[name='number']").val();
    this.el.reset();

    var route = "animal/" + encodeURI(animal) + "/number/" + encodeURI(number);
    Backbone.history.navigate(route, {trigger: true});
  }
});

