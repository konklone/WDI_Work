describe("IngredientsView", function() {
  var view, collection, ul;

  beforeEach(function() {
    ul = $("<ul class='ingredients'>");
    $("body").append(ul);

    collection = new Backbone.Collection();
    view = new IngredientsView({collection: collection});
  });

  afterEach(function() {
    ul.remove();
  });

  it("is tied to the ul", function() {
    expect(view.el).toBe(ul[0]);
  });

  it("renders new ingredients when added", function() {
    collection.add({title: "Muffins"});

    expect(view.$el.find("li")).toHaveText("Muffins");
  });

});