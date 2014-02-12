//                      _      _
//                     | |    | |
//  _ __ ___   ___   __| | ___| |___
// | '_ ` _ \ / _ \ / _` |/ _ \ / __|
// | | | | | | (_) | (_| |  __/ \__ \
// |_| |_| |_|\___/ \__,_|\___|_|___/


var Activity = Backbone.Model.extend({
  defaults: {
    done: false
  },
  toggleDone: function() {
    // this.set sets and saves
    this.save("done", !this.get("done"));
  }
});
//            _ _           _   _
//           | | |         | | (_)
//   ___ ___ | | | ___  ___| |_ _  ___  _ __  ___
//  / __/ _ \| | |/ _ \/ __| __| |/ _ \| '_ \/ __|
// | (_| (_) | | |  __/ (__| |_| | (_) | | | \__ \
//  \___\___/|_|_|\___|\___|\__|_|\___/|_| |_|___/


var BucketList = Backbone.Collection.extend({
  model: Activity,
  // setting up where the POST action goes
  url: 'activities'
});

var list = new BucketList();

var skyDiving = new Activity({title: "Sky Diving"});

list.add(skyDiving);

list.on("add", function() {
  console.log(this.pluck("title"));
});

//        _
//       (_)
// __   ___  _____      _____
// \ \ / / |/ _ \ \ /\ / / __|
//  \ V /| |  __/\ V  V /\__ \
//   \_/ |_|\___| \_/\_/ |___/



var ActivityView = Backbone.View.extend({
  tagName: "li",

  template: _.template($("script[type='text/html']").html()),

  events: {
    // event :thingHappenTo: method
    "click :checkbox": "toggleDone",
    "click .remove": "throwAwayForever"
  },

  toggleDone: function() {
    // this throwAwayForever is a method on the model which we must define on our model
    this.model.toggleDone();
  },
  initialize: function() {
    // listener syntax(thingListenedTo, event, method on view that we want to happen)
    this.listenTo(this.model, "change", this.render);
    // this removes the el on the page, too
    this.listenTo(this.model, "destroy", this.remove);
    // this renders it on load, regardless of other events
    this.render();
  },

  render: function() {
    //this.$el.text(this.model.get("title"));
    var compiledTemp = this.template(this.model.toJSON());
    this.$el.html(compiledTemp);
  },
  throwAwayForever: function() {
    // this throwAwayForever is a method on the model, native to Backbone.
    this.model.destroy();
  }
});

var ListView = Backbone.View.extend({
  el: "ul",

  initialize: function() {
    this.listenTo(this.collection, "add", this.addOne);
    this.listenTo(this.collection, "reset", this.addAll);
  },

  addOne: function(activity) {
    var view = new ActivityView({model: activity});
    this.$el.append(view.el);
  },

  addAll: function() {
    // this is the underscore each. first arg = action, second arg = what context we're in(manipulating val of this)
    // this is now equal to list, not window
    this.collection.each(this.addOne, this);
  }
});

var FormView = Backbone.View.extend({
  el: "form",

  events: {
    "submit": "newActivity"
  },

  newActivity: function(e) {
    e.preventDefault();
    var title = this.$el.find("input[name='activity']").val();
    this.collection.create({title: title});
    this.el.reset();
  }

});

//                                        _                           _
//                                       | |                         | |
//   __ _  ___    ___ _ __   ___  ___  __| |  _ __ __ _  ___ ___ _ __| |
//  / _` |/ _ \  / __| '_ \ / _ \/ _ \/ _` | | '__/ _` |/ __/ _ \ '__| |
// | (_| | (_) | \__ \ |_) |  __/  __/ (_| | | | | (_| | (_|  __/ |  |_|
//  \__, |\___/  |___/ .__/ \___|\___|\__,_| |_|  \__,_|\___\___|_|  (_)
//   __/ |           | |
//  |___/            |_|

var form = new FormView({collection: list});
var theList = new ListView({collection: list});

// when models come back, fire method reset: true.
// reset = "reset" (collection, options) — when the collection's entire contents have been replaced.
list.fetch({reset: true});

