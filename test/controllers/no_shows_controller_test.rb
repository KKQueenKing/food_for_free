require 'test_helper'

class NoShowsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get no_shows_create_url
    assert_response :success
  end

  test "should get destroy" do
    get no_shows_destroy_url
    assert_response :success
  end

end
