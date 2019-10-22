require "application_system_test_case"

class AutomotivesTest < ApplicationSystemTestCase
  setup do
    @automotive = automotives(:one)
  end

  test "visiting the index" do
    visit automotives_url
    assert_selector "h1", text: "Automotives"
  end

  test "creating a Automotive" do
    visit automotives_url
    click_on "New Automotive"

    click_on "Create Automotive"

    assert_text "Automotive was successfully created"
    click_on "Back"
  end

  test "updating a Automotive" do
    visit automotives_url
    click_on "Edit", match: :first

    click_on "Update Automotive"

    assert_text "Automotive was successfully updated"
    click_on "Back"
  end

  test "destroying a Automotive" do
    visit automotives_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Automotive was successfully destroyed"
  end
end
