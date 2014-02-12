var ZooApp = {
  Models : {},
  Collections: {},
  Views: {},
  Router: null,
  initialize: function(){

  console.log("Application loaded!");
    //initialize collections
    exhibitList = new ZooApp.Collections.Exhibits()
    escapeList = new ZooApp.Collections.Escapes();

    // clean any hashes from URL
    window.location.hash = "";

    // begin routing
    new ZooRouter(exhibitList, escapeList);

    // exhibitList.add(new ExhibitModel(3, "Lions"));
    // exhibitList.add(new ExhibitModel(3, "Tigers"));
    // exhibitList.add(new ExhibitModel(3, "Bears"));

    Backbone.history.start();
  }

};














// *************************************************
// **********         ESCAPE MVC          **********
// *************************************************








