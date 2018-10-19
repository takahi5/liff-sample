require 'test_helper'

class LiffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @liff = liffs(:one)
  end

  test "should get index" do
    get liffs_url
    assert_response :success
  end

  test "should get new" do
    get new_liff_url
    assert_response :success
  end

  test "should create liff" do
    assert_difference('Liff.count') do
      post liffs_url, params: { liff: { body: @liff.body, title: @liff.title } }
    end

    assert_redirected_to liff_url(Liff.last)
  end

  test "should show liff" do
    get liff_url(@liff)
    assert_response :success
  end

  test "should get edit" do
    get edit_liff_url(@liff)
    assert_response :success
  end

  test "should update liff" do
    patch liff_url(@liff), params: { liff: { body: @liff.body, title: @liff.title } }
    assert_redirected_to liff_url(@liff)
  end

  test "should destroy liff" do
    assert_difference('Liff.count', -1) do
      delete liff_url(@liff)
    end

    assert_redirected_to liffs_url
  end
end
