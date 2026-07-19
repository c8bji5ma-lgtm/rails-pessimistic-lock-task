require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    post sessions_url, params: { session: { email: users(:one).email, password: 'password' } }
  end

  test "should get index" do
    get items_url
    assert_response :success
  end

end
