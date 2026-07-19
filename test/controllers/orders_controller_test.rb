require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    post sessions_url, params: { session: { email: users(:two).email, password: 'password' } }
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

end
