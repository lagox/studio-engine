require 'test_helper'

class IndexControllerTest < ActionController::TestCase
  test "should get contacts" do
    get :contacts
    assert_response :success
  end

end
