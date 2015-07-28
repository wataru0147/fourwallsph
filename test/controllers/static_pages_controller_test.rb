require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  def setup
    @base_title = "4WallsPH"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "#{@base_title}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title" , "Help | #{@base_title}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title" , "About | #{@base_title}"
  end

  test "should get contactus" do
    get :contactus
    assert_response :success
    assert_select "title" ,"Contact Us | #{@base_title}"
  end

  test "should get search" do
    get :search
    assert_response :success
    assert_select "title" , "Search | #{@base_title}"
  end


end
