require 'test_helper'

class TripReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trip_reports_index_url
    assert_response :success
  end

  test "should get new" do
    get trip_reports_new_url
    assert_response :success
  end

end
