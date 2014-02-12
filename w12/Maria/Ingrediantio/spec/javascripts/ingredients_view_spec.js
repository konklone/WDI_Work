describe("IngredientsView", function() {
  var view, collection, ul;

  beforeEach(function() {
    ul = $("<ul class='ingredients'>");
    $("body").append(ul);

    collection = new Backbone.Collection();
    view = new IngredientsView({collection: collection});
  });

  it("is tied to the ul", function() {
    expect(view.el).toBe(ul[0]);
  });


});