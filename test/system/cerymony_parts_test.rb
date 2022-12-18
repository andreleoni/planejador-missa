require "application_system_test_case"

class CeremonyPartsTest < ApplicationSystemTestCase
  setup do
    @ceremony_part = ceremony_parts(:one)
  end

  test "visiting the index" do
    visit ceremony_parts_url
    assert_selector "h1", text: "Ceremony parts"
  end

  test "should create ceremony part" do
    visit ceremony_parts_url
    click_on "New ceremony part"

    fill_in "Ceremony", with: @ceremony_part.cerimony_id
    fill_in "External url", with: @ceremony_part.external_url
    fill_in "Notes", with: @ceremony_part.notes
    fill_in "Title", with: @ceremony_part.title
    click_on "Create Ceremony part"

    assert_text "Ceremony part was successfully created"
    click_on "Back"
  end

  test "should update Ceremony part" do
    visit ceremony_part_url(@ceremony_part)
    click_on "Edit this ceremony part", match: :first

    fill_in "Ceremony", with: @ceremony_part.cerimony_id
    fill_in "External url", with: @ceremony_part.external_url
    fill_in "Notes", with: @ceremony_part.notes
    fill_in "Title", with: @ceremony_part.title
    click_on "Update Ceremony part"

    assert_text "Ceremony part was successfully updated"
    click_on "Back"
  end

  test "should destroy Ceremony part" do
    visit ceremony_part_url(@ceremony_part)
    click_on "Destroy this ceremony part", match: :first

    assert_text "Ceremony part was successfully destroyed"
  end
end
