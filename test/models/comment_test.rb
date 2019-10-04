require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test 'validates message length' do
    comment = Comment.new(message: '', submission: submissions(:one))
    assert_predicate comment, :invalid?
    assert_equal({ message: ['is too short (minimum is 1 character)'] }, comment.errors.messages)
  end

  test 'validates parent' do
    comment = Comment.new(message: 'a', parent_id: -1, submission: submissions(:one))
    assert_predicate comment, :invalid?
    assert_equal({ parent: ["can't be blank"] }, comment.errors.messages)
  end
end
