describe("FormView", function() {

  var view, collection, form;

  beforeEach(function() {
    appendLoadFixtures("form.html");
    form = $("form.new-ingredient");

    collection = jasmine.createSpyObj("ingredients", ["create"]);

    view = new FormView({collection: collection});
  });

  it("is tied to the form", function() {
    expect(view.el).toBe(form[0]);
  });

  it("adds new ingredients when submitted", function() {
    form.find("input[name='title']").val("Muffins");
    form.submit();

    expect(collection.create).toHaveBeenCalledWith({title: "Muffins"});
  });
});