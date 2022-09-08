require "application_system_test_case"

class ChlidrensTest < ApplicationSystemTestCase
  setup do
    @chlidren = chlidrens(:one)
  end

  test "visiting the index" do
    visit chlidrens_url
    assert_selector "h1", text: "Chlidrens"
  end

  test "creating a Chlidren" do
    visit chlidrens_url
    click_on "New Chlidren"

    fill_in "Child class", with: @chlidren.child_class
    fill_in "Child roll no", with: @chlidren.child_roll_no
    fill_in "Name", with: @chlidren.name
    click_on "Create Chlidren"

    assert_text "Chlidren was successfully created"
    click_on "Back"
  end

  test "updating a Chlidren" do
    visit chlidrens_url
    click_on "Edit", match: :first

    fill_in "Child class", with: @chlidren.child_class
    fill_in "Child roll no", with: @chlidren.child_roll_no
    fill_in "Name", with: @chlidren.name
    click_on "Update Chlidren"

    assert_text "Chlidren was successfully updated"
    click_on "Back"
  end

  test "destroying a Chlidren" do
    visit chlidrens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chlidren was successfully destroyed"
  end
end
