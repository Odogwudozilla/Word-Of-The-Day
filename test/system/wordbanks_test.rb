require "application_system_test_case"

class WordbanksTest < ApplicationSystemTestCase
  setup do
    @wordbank = wordbanks(:one)
  end

  test "visiting the index" do
    visit wordbanks_url
    assert_selector "h1", text: "Wordbanks"
  end

  test "creating a Wordbank" do
    visit wordbanks_url
    click_on "New Wordbank"

    fill_in "Description", with: @wordbank.description
    fill_in "Topic", with: @wordbank.topic
    click_on "Create Wordbank"

    assert_text "Wordbank was successfully created"
    click_on "Back"
  end

  test "updating a Wordbank" do
    visit wordbanks_url
    click_on "Edit", match: :first

    fill_in "Description", with: @wordbank.description
    fill_in "Topic", with: @wordbank.topic
    click_on "Update Wordbank"

    assert_text "Wordbank was successfully updated"
    click_on "Back"
  end

  test "destroying a Wordbank" do
    visit wordbanks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wordbank was successfully destroyed"
  end
end
