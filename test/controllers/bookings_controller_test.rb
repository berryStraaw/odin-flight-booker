require "test_helper"

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get controller" do
    get bookings_controller_url
    assert_response :success
  end
end
