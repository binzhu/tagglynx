require 'test_helper'

class DiscussionsControllerTest < ActionController::TestCase
  setup do
    @discussion = discussions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discussions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discussion" do
    assert_difference('Discussion.count') do
      post :create, discussion: { active: @discussion.active, content: @discussion.content, countviews: @discussion.countviews, sticky: @discussion.sticky, title: @discussion.title, user_id: @discussion.user_id, webpage_id: @discussion.webpage_id }
    end

    assert_redirected_to discussion_path(assigns(:discussion))
  end

  test "should show discussion" do
    get :show, id: @discussion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @discussion
    assert_response :success
  end

  test "should update discussion" do
    put :update, id: @discussion, discussion: { active: @discussion.active, content: @discussion.content, countviews: @discussion.countviews, sticky: @discussion.sticky, title: @discussion.title, user_id: @discussion.user_id, webpage_id: @discussion.webpage_id }
    assert_redirected_to discussion_path(assigns(:discussion))
  end

  test "should destroy discussion" do
    assert_difference('Discussion.count', -1) do
      delete :destroy, id: @discussion
    end

    assert_redirected_to discussions_path
  end
end
