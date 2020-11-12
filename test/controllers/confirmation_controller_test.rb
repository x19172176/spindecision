require 'test_helper'

class ConfirmationControllerTest < ActionDispatch::IntegrationTest
  test "should get wheel" do
    get confirmation_wheel_url
    assert_response :success
  end

end
