require 'spec_helper'

describe "a food lover can add ingredients to their list", js: true do
  it "adds muffins" do
    visit "/"

    within "form.new-ingredient" do
      fill_in :title, with: "Blueberry Muffin"
      click_button "Add"
    end

    # expect(page).to have_content "Thanks for adding a Blueberry Muffin"

    within "ul.ingredients" do
      expect(page).to have_content "Blueberry Muffin"
    end
    
  
  end

end
