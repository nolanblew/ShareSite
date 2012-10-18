require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def test_create_new_user
    user = User.new
    assert user.save
  end
end
