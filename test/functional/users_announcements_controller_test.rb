require 'test_helper'

class UsersAnnouncementsControllerTest < ActionController::TestCase
  setup do
    @users_announcement = users_announcements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_announcements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users_announcement" do
    assert_difference('UsersAnnouncement.count') do
      post :create, users_announcement: { announcement_id: @users_announcement.announcement_id, dismiss_date: @users_announcement.dismiss_date, user_id: @users_announcement.user_id }
    end

    assert_redirected_to users_announcement_path(assigns(:users_announcement))
  end

  test "should show users_announcement" do
    get :show, id: @users_announcement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @users_announcement
    assert_response :success
  end

  test "should update users_announcement" do
    put :update, id: @users_announcement, users_announcement: { announcement_id: @users_announcement.announcement_id, dismiss_date: @users_announcement.dismiss_date, user_id: @users_announcement.user_id }
    assert_redirected_to users_announcement_path(assigns(:users_announcement))
  end

  test "should destroy users_announcement" do
    assert_difference('UsersAnnouncement.count', -1) do
      delete :destroy, id: @users_announcement
    end

    assert_redirected_to users_announcements_path
  end
end
