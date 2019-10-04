require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment = comments(:one)
  end

  test "should get new" do
    get new_comment_url, params: { comment: { submission_id: @comment.submission_id } }
    assert_response :ok
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post comments_url, params: { comment: { message: @comment.message, parent_id: @comment.id, submission_id: @comment.submission_id } }
    end

    assert_redirected_to submission_url(Comment.last.submission)
  end

  test "should fail to create comment" do
    assert_no_difference('Comment.count') do
      post comments_url, params: { comment: { parent_id: @comment.id, submission_id: @comment.submission_id } }
    end

    assert_response :unprocessable_entity
  end

  test "should destroy comment" do
    submission = @comment.submission
    assert_difference('Comment.count', -1) do
      delete comment_url(@comment)
    end

    assert_redirected_to submission_url(submission)
  end
end
