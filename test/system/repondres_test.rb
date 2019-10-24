require "application_system_test_case"

class RepondresTest < ApplicationSystemTestCase
  setup do
    @repondre = repondres(:one)
  end

  test "visiting the index" do
    visit repondres_url
    assert_selector "h1", text: "Repondres"
  end

  test "creating a Repondre" do
    visit repondres_url
    click_on "New Repondre"

    fill_in "Question", with: @repondre.question_id
    fill_in "User", with: @repondre.user_id
    click_on "Create Repondre"

    assert_text "Repondre was successfully created"
    click_on "Back"
  end

  test "updating a Repondre" do
    visit repondres_url
    click_on "Edit", match: :first

    fill_in "Question", with: @repondre.question_id
    fill_in "User", with: @repondre.user_id
    click_on "Update Repondre"

    assert_text "Repondre was successfully updated"
    click_on "Back"
  end

  test "destroying a Repondre" do
    visit repondres_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Repondre was successfully destroyed"
  end
end
