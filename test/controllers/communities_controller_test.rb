require 'test_helper'

class CommunitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @community = communities(:one)
  end

  test "should get new" do
    get new_community_url
    assert_response :success
  end

  test "should create community" do
    assert_difference('Community.count') do
      post communities_url, params: { community: { name: @community.name } }
    end

    assert_redirected_to community_url(Community.last)
  end

  test "should show community" do
    get community_url(@community)
    assert_response :success
  end

  test "should destroy community" do
    assert_difference('Community.count', -1) do
      delete community_url(@community)
    end

    assert_redirected_to communities_url
  end
end
