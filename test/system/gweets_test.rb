require "application_system_test_case"

class GweetsTest < ApplicationSystemTestCase
  setup do
    @gweet = gweets(:one)
  end

  test "visiting the index" do
    visit gweets_url
    assert_selector "h1", text: "Gweets"
  end

  test "creating a Gweet" do
    visit gweets_url
    click_on "New Gweet"

    fill_in "Post", with: @gweet.post
    click_on "Create Gweet"

    assert_text "Gweet was successfully created"
    click_on "Back"
  end

  test "updating a Gweet" do
    visit gweets_url
    click_on "Edit", match: :first

    fill_in "Post", with: @gweet.post
    click_on "Update Gweet"

    assert_text "Gweet was successfully updated"
    click_on "Back"
  end

  test "destroying a Gweet" do
    visit gweets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gweet was successfully destroyed"
  end
end
