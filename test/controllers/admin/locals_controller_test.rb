require 'test_helper'

class Admin::LocalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_locals_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_locals_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_locals_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_locals_update_url
    assert_response :success
  end

end
