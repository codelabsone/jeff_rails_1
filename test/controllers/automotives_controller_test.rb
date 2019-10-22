require 'test_helper'

class AutomotivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @automotive = automotives(:one)
  end

  test "should get index" do
    get automotives_url
    assert_response :success
  end

  test "should get new" do
    get new_automotive_url
    assert_response :success
  end

  test "should create automotive" do
    assert_difference('Automotive.count') do
      post automotives_url, params: { automotive: {  } }
    end

    assert_redirected_to automotive_url(Automotive.last)
  end

  test "should show automotive" do
    get automotive_url(@automotive)
    assert_response :success
  end

  test "should get edit" do
    get edit_automotive_url(@automotive)
    assert_response :success
  end

  test "should update automotive" do
    patch automotive_url(@automotive), params: { automotive: {  } }
    assert_redirected_to automotive_url(@automotive)
  end

  test "should destroy automotive" do
    assert_difference('Automotive.count', -1) do
      delete automotive_url(@automotive)
    end

    assert_redirected_to automotives_url
  end
end
