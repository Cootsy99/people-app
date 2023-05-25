require "application_system_test_case"

class CitizenshipsTest < ApplicationSystemTestCase
  setup do
    @citizenship = citizenships(:one)
  end

  test "visiting the index" do
    visit citizenships_url
    assert_selector "h1", text: "Citizenships"
  end

  test "should create citizenship" do
    visit citizenships_url
    click_on "New citizenship"

    fill_in "Country", with: @citizenship.country_id
    fill_in "Person", with: @citizenship.person_id
    click_on "Create Citizenship"

    assert_text "Citizenship was successfully created"
    click_on "Back"
  end

  test "should update Citizenship" do
    visit citizenship_url(@citizenship)
    click_on "Edit this citizenship", match: :first

    fill_in "Country", with: @citizenship.country_id
    fill_in "Person", with: @citizenship.person_id
    click_on "Update Citizenship"

    assert_text "Citizenship was successfully updated"
    click_on "Back"
  end

  test "should destroy Citizenship" do
    visit citizenship_url(@citizenship)
    click_on "Destroy this citizenship", match: :first

    assert_text "Citizenship was successfully destroyed"
  end
end
