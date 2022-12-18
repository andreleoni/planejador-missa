require "test_helper"

class CerimoniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cerimony = cerimonies(:one)
  end

  test "should get index" do
    get cerimonies_url
    assert_response :success
  end

  test "should get new" do
    get new_cerimony_url
    assert_response :success
  end

  test "should create cerimony" do
    assert_difference("Ceremony.count") do
      post cerimonies_url, params: { cerimony: { finish_at: @cerimony.finish_at, starts_at: @cerimony.starts_at, title: @cerimony.title } }
    end

    assert_redirected_to cerimony_url(Ceremony.last)
  end

  test "should show cerimony" do
    get cerimony_url(@cerimony)
    assert_response :success
  end

  test "should get edit" do
    get edit_cerimony_url(@cerimony)
    assert_response :success
  end

  test "should update cerimony" do
    patch cerimony_url(@cerimony), params: { cerimony: { finish_at: @cerimony.finish_at, starts_at: @cerimony.starts_at, title: @cerimony.title } }
    assert_redirected_to cerimony_url(@cerimony)
  end

  test "should destroy cerimony" do
    assert_difference("Ceremony.count", -1) do
      delete cerimony_url(@cerimony)
    end

    assert_redirected_to cerimonies_url
  end
end
