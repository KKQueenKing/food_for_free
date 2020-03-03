require 'test_helper'

class FoodDonationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get food_donations_index_url
    assert_response :success
  end

  test "should get show" do
    get food_donations_show_url
    assert_response :success
  end

  test "should get new" do
    get food_donations_new_url
    assert_response :success
  end

  test "should get create" do
    get food_donations_create_url
    assert_response :success
  end

  test "should get edit" do
    get food_donations_edit_url
    assert_response :success
  end

  test "should get update" do
    get food_donations_update_url
    assert_response :success
  end

  test "should get destroy" do
    get food_donations_destroy_url
    assert_response :success
  end

end
