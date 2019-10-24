require "application_system_test_case"

class ReponsesTest < ApplicationSystemTestCase
  setup do
    @reponse = reponses(:one)
  end

  test "visiting the index" do
    visit reponses_url
    assert_selector "h1", text: "Reponses"
  end

  test "creating a Reponse" do
    visit reponses_url
    click_on "New Reponse"

    fill_in "Lib reponse", with: @reponse.lib_reponse
    click_on "Create Reponse"

    assert_text "Reponse was successfully created"
    click_on "Back"
  end

  test "updating a Reponse" do
    visit reponses_url
    click_on "Edit", match: :first

    fill_in "Lib reponse", with: @reponse.lib_reponse
    click_on "Update Reponse"

    assert_text "Reponse was successfully updated"
    click_on "Back"
  end

  test "destroying a Reponse" do
    visit reponses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reponse was successfully destroyed"
  end
end
