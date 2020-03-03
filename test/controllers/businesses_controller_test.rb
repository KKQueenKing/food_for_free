require 'test_helper'

class BusinessesControllerTest < ActionDispatch::IntegrationTest
  test "should get resources" do
    get businesses_resources_url
    assert_response :success
  end

end
