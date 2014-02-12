/*
__________                __   ___.                          .__                                               __   
\______   \_____    ____ |  | _\_ |__   ____   ____   ____   |__| ______   ________  _  __ ____   ____   _____/  |_ 
 |    |  _/\__  \ _/ ___\|  |/ /| __ \ /  _ \ /    \_/ __ \  |  |/  ___/  /  ___/\ \/ \/ // __ \_/ __ \_/ __ \   __\
 |    |   \ / __ \\  \___|    < | \_\ (  <_> )   |  \  ___/  |  |\___ \   \___ \  \     /\  ___/\  ___/\  ___/|  |  
 |______  /(____  /\___  >__|_ \|___  /\____/|___|  /\___  > |__/____  > /____  >  \/\_/  \___  >\___  >\___  >__|  
        \/      \/     \/     \/    \/            \/     \/          \/       \/              \/     \/     \/      
*/


/*
   _____             .___     .__          
  /     \   ____   __| _/____ |  |   ______
 /  \ /  \ /  _ \ / __ |/ __ \|  |  /  ___/
/    Y    (  <_> ) /_/ \  ___/|  |__\___ \ 
\____|__  /\____/\____ |\___  >____/____  >
        \/            \/    \/          \/ 
*/
var Activity = Backbone.Model.extend({
  defaults: {
    done: false
  },

  toggleDone: function() {
    this.save({done: !this.get("done")});
  }
});

/*
_________        .__  .__                 __  .__                      
\_   ___ \  ____ |  | |  |   ____   _____/  |_|__| ____   ____   ______
/    \  \/ /  _ \|  | |  | _/ __ \_/ ___\   __\  |/  _ \ /    \ /  ___/
\     \___(  <_> )  |_|  |_\  ___/\  \___|  | |  (  <_> )   |  \\___ \ 
 \______  /\____/|____/____/\___  >\___  >__| |__|\____/|___|  /____  >
        \/                      \/     \/                    \/     \/ 
*/

var BucketList = Backbone.Collection.extend({
  model: Activity,

  url: "activities"
});

var list = new BucketList();

/*
____   ____.__                     
\   \ /   /|__| ______  _  ________
 \   Y   / |  |/ __ \ \/ \/ /  ___/
  \     /  |  \  ___/\     /\___ \ 
   \___/   |__|\___  >\/\_//____  >
                   \/           \/ 
*/        

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

var ActivityView = Backbone.View.extend({
  tagName: "li",

  template: _.template($("script[type='text/html']").html()),

  events: {
    "click :checkbox": "toggleDoneRainbows",
    "click span.remove": "deleteActivity"
  },

  toggleDoneRainbows: function() {
    this.model.toggleDone();
  },

  deleteActivity: function() {
    this.model.destroy();
  },

  initialize: function() {
    this.listenTo(this.model, "change", this.render);
    this.listenTo(this.model, "destroy", this.remove);
    this.render();
  },

  render: function() {
    var compiledTemp = this.template(this.model.toJSON());
    this.$el.html(compiledTemp);
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
    this.collection.each(this.addOne, this);
  }
});

/*
.___       .__  __  .__       .__  .__                __  .__               
|   | ____ |__|/  |_|__|____  |  | |__|____________ _/  |_|__| ____   ____  
|   |/    \|  \   __\  \__  \ |  | |  \___   /\__  \\   __\  |/  _ \ /    \ 
|   |   |  \  ||  | |  |/ __ \|  |_|  |/    /  / __ \|  | |  (  <_> )   |  \
|___|___|  /__||__| |__(____  /____/__/_____ \(____  /__| |__|\____/|___|  /
         \/                 \/              \/     \/                    \/ 
*/

var form = new FormView({collection: list});
var theList = new ListView({collection: list});
list.fetch({reset: true});
