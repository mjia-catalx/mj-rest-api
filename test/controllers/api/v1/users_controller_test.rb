require 'test_helper'

class Api::V1::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get "/api/v1/users"
    assert_response :success
  end

  test "should create a user" do
    post "/api/v1/users", params: {user: {username: "test_user", password: "123456"}}
    assert_response :success

    users = User.all
    assert users.length > 0
  end

  test "should show an existing user" do
    user = User.new({username: "test_user", password: "123456"})

    get "/api/v1/users/#{user.id}"
    assert_response :success
  end
end
