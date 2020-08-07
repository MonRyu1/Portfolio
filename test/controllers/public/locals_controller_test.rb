require 'test_helper'

class Public::LocalsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_locals_show_url
    assert_response :success
  end

  test "should get edit" do
    get public_locals_edit_url
    assert_response :success
  end

  test "should get update" do
    get public_locals_update_url
    assert_response :success
  end

  test "should get confirm" do
    get public_locals_confirm_url
    assert_response :success
  end

  test "should get leave" do
    get public_locals_leave_url
    assert_response :success
  end

end
