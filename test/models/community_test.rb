require 'test_helper'

class CommunityTest < ActiveSupport::TestCase
  test 'validates length of name' do
    community = Community.new(name: 'abc')
    assert_predicate community, :invalid?
    assert_equal({ name: ['is too short (minimum is 4 characters)'] }, community.errors.messages)
  end
end
