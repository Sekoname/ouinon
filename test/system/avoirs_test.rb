require "application_system_test_case"

class AvoirsTest < ApplicationSystemTestCase
  setup do
    @avoir = avoirs(:one)
  end

  test "visiting the index" do
    visit avoirs_url
    assert_selector "h1", text: "Avoirs"
  end

  test "creating a Avoir" do
    visit avoirs_url
    click_on "New Avoir"

    fill_in "Question", with: @avoir.question_id
    fill_in "Reponse", with: @avoir.reponse_id
    click_on "Create Avoir"

    assert_text "Avoir was successfully created"
    click_on "Back"
  end

  test "updating a Avoir" do
    visit avoirs_url
    click_on "Edit", match: :first

    fill_in "Question", with: @avoir.question_id
    fill_in "Reponse", with: @avoir.reponse_id
    click_on "Update Avoir"

    assert_text "Avoir was successfully updated"
    click_on "Back"
  end

  test "destroying a Avoir" do
    visit avoirs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Avoir was successfully destroyed"
  end
end
