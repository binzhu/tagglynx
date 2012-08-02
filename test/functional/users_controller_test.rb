require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { about: @user.about, active: @user.active, blog_link: @user.blog_link, country: @user.country, dob: @user.dob, email: @user.email, fb_id: @user.fb_id, firstlogin: @user.firstlogin, fname: @user.fname, gender: @user.gender, invited_by: @user.invited_by, lastlogin: @user.lastlogin, lname: @user.lname, mname: @user.mname, postal: @user.postal, pwd: @user.pwd, seed: @user.seed, showemail: @user.showemail, timediff: @user.timediff, twitter_id: @user.twitter_id, username: @user.username }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { about: @user.about, active: @user.active, blog_link: @user.blog_link, country: @user.country, dob: @user.dob, email: @user.email, fb_id: @user.fb_id, firstlogin: @user.firstlogin, fname: @user.fname, gender: @user.gender, invited_by: @user.invited_by, lastlogin: @user.lastlogin, lname: @user.lname, mname: @user.mname, postal: @user.postal, pwd: @user.pwd, seed: @user.seed, showemail: @user.showemail, timediff: @user.timediff, twitter_id: @user.twitter_id, username: @user.username }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
