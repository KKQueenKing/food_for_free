require 'test_helper'

class DonationAvailabilitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get donation_availabilities_new_url
    assert_response :success
  end

  test "should get create" do
    get donation_availabilities_create_url
    assert_response :success
  end

  test "should get edit" do
    get donation_availabilities_edit_url
    assert_response :success
  end

  test "should get update" do
    get donation_availabilities_update_url
    assert_response :success
  end

  test "should get destroy" do
    get donation_availabilities_destroy_url
    assert_response :success
  end

end
