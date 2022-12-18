require "application_system_test_case"

class CerimoniesTest < ApplicationSystemTestCase
  setup do
    @cerimony = cerimonies(:one)
  end

  test "visiting the index" do
    visit cerimonies_url
    assert_selector "h1", text: "Cerimonies"
  end

  test "should create cerimony" do
    visit cerimonies_url
    click_on "New cerimony"

    fill_in "Finish at", with: @cerimony.finish_at
    fill_in "Starts at", with: @cerimony.starts_at
    fill_in "Title", with: @cerimony.title
    click_on "Create Ceremony"

    assert_text "Ceremony was successfully created"
    click_on "Back"
  end

  test "should update Ceremony" do
    visit cerimony_url(@cerimony)
    click_on "Edit this cerimony", match: :first

    fill_in "Finish at", with: @cerimony.finish_at
    fill_in "Starts at", with: @cerimony.starts_at
    fill_in "Title", with: @cerimony.title
    click_on "Update Ceremony"

    assert_text "Ceremony was successfully updated"
    click_on "Back"
  end

  test "should destroy Ceremony" do
    visit cerimony_url(@cerimony)
    click_on "Destroy this cerimony", match: :first

    assert_text "Ceremony was successfully destroyed"
  end
end
