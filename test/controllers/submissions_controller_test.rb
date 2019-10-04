require 'test_helper'

class SubmissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @submission = submissions(:one)
  end

  test "should get index" do
    get root_url
    assert_response :ok
  end

  test "should get new" do
    get new_submission_url
    assert_response :ok
  end

  test "should create submission" do
    assert_difference('Submission.count') do
      post submissions_url, params: { submission: { community_id: @submission.community_id, title: @submission.title, url: @submission.url } }
    end

    assert_redirected_to submission_url(Submission.last)
  end

  test "should fails to create submission" do
    assert_no_difference('Submission.count') do
      post submissions_url, params: { submission: { title: @submission.title, url: @submission.url } }
    end

    assert_response :unprocessable_entity
  end

  test "should show submission" do
    get submission_url(@submission)
    assert_response :ok
  end

  test "should destroy submission" do
    assert_difference('Submission.count', -1) do
      delete submission_url(@submission)
    end

    assert_redirected_to root_url
  end
end
