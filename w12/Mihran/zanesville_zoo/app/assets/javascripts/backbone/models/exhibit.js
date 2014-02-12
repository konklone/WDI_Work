// **********       EXHIBIT MODEL         **********
// This is model that describes a specific exhibit,
// and it contains a number of animals, an animal
// type, and a random description of those animals.
//

ZooApp.Models.Exhibit = Backbone.Model.extend({

  initialize: function(number, animal, status) {
    console.log("Initialized ExhibitModel:");

    this.set({
      number: number,
      description: this.randomDescription(status), // notice I'm calling, not referencing...
      animal: animal
    });

    console.log(
      this.get("number") + " " +
      this.get("description") + " " +
      this.get("animal")
    );
  },

  randomDescription: function(status){
    return (status != "escaped") ?
      _.sample([
        "Laconic","Sad","Lonely","Cold","Under-stimulated","Lost","Confused",
        "Depressing","Broken","Stoic","Furtive","Tired","Dirty","Pessimistic"
      ]) :
      _.sample([
        "Excited","Hopeful","Liberated","Free","Optimistic","Actualized","Gay",
        "Joyful","Euphoric","Timid","Playful","Bemused","Awe-struck","Happy",
        "Reluctant","Suspicious","Cautious","Balls-to-the-wall","Gung-ho"
      ]);
  }
});