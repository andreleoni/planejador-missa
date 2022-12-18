require "test_helper"

class CerymonyPartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ceremony_part = ceremony_parts(:one)
  end

  test "should get index" do
    get ceremony_parts_url
    assert_response :success
  end

  test "should get new" do
    get new_ceremony_part_url
    assert_response :success
  end

  test "should create ceremony_part" do
    assert_difference("CerymonyPart.count") do
      post ceremony_parts_url, params: { ceremony_part: { cerimony_id: @ceremony_part.cerimony_id, external_url: @ceremony_part.external_url, notes: @ceremony_part.notes, title: @ceremony_part.title } }
    end

    assert_redirected_to ceremony_part_url(CerymonyPart.last)
  end

  test "should show ceremony_part" do
    get ceremony_part_url(@ceremony_part)
    assert_response :success
  end

  test "should get edit" do
    get edit_ceremony_part_url(@ceremony_part)
    assert_response :success
  end

  test "should update ceremony_part" do
    patch ceremony_part_url(@ceremony_part), params: { ceremony_part: { cerimony_id: @ceremony_part.cerimony_id, external_url: @ceremony_part.external_url, notes: @ceremony_part.notes, title: @ceremony_part.title } }
    assert_redirected_to ceremony_part_url(@ceremony_part)
  end

  test "should destroy ceremony_part" do
    assert_difference("CerymonyPart.count", -1) do
      delete ceremony_part_url(@ceremony_part)
    end

    assert_redirected_to ceremony_parts_url
  end
end
