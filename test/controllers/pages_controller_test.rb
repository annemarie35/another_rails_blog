require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "1___PAGES___should get info" do
    get :info
    assert_response :success
  end

end
