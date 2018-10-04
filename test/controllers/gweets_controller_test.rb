require 'test_helper'

class GweetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gweet = gweets(:one)
  end

  test "should get index" do
    get gweets_url
    assert_response :success
  end

  test "should get new" do
    get new_gweet_url
    assert_response :success
  end

  test "should create gweet" do
    assert_difference('Gweet.count') do
      post gweets_url, params: { gweet: { post: @gweet.post } }
    end

    assert_redirected_to gweet_url(Gweet.last)
  end

  test "should show gweet" do
    get gweet_url(@gweet)
    assert_response :success
  end

  test "should get edit" do
    get edit_gweet_url(@gweet)
    assert_response :success
  end

  test "should update gweet" do
    patch gweet_url(@gweet), params: { gweet: { post: @gweet.post } }
    assert_redirected_to gweet_url(@gweet)
  end

  test "should destroy gweet" do
    assert_difference('Gweet.count', -1) do
      delete gweet_url(@gweet)
    end

    assert_redirected_to gweets_url
  end
end
