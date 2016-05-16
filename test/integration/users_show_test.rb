require 'test_helper'

class UsersShowTest < ActionDispatch::IntegrationTest
  def setup
    @unactivated_user = users(:hunter)
    @activated_user   = users(:michael)
  end

  test "should redirect to root_url when user is not activated" do
    log_in_as(@unactivated_user)
    assert_redirected_to root_url
  end

  test "should show profile when user is activated" do
    log_in_as(@activated_user)
    assert_redirected_to @activated_user
  end
end
