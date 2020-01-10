require 'test_helper'

class ClimbsControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get climbs_about_url
    assert_response :success
  end

end
