require 'test_helper'

class Api::V1::FactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get "/api/v1/users/1/facts"
    assert_response :success
  end
end
