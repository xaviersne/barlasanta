require 'test_helper'

class ReserveControllerTest < ActionDispatch::IntegrationTest
  test "should get Create" do
    get reserve_Create_url
    assert_response :success
  end

end
