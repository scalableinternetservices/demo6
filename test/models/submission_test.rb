require 'test_helper'

class SubmissionTest < ActiveSupport::TestCase
  test 'validates title length' do
    submission = Submission.new(community: communities(:one), title: 'abcd', url: 'https://google.com')
    assert_predicate submission, :invalid?
    assert_equal({ title: ['is too short (minimum is 5 characters)'] }, submission.errors.messages)
  end

  test 'validates url' do
    submission = Submission.new(community: submissions(:one).community, title: 'abcde', url: 'https:/google.com')
    assert_predicate submission, :invalid?
    assert_equal({ url: ['is not a valid URL'] }, submission.errors.messages)
  end
end
