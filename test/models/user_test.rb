require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "test1" do
    user = User.new
    assert_not user.save, "Saved the user without a username"
  end
end
