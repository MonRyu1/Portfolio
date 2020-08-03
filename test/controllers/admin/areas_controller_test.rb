require 'test_helper'

class Admin::AreasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_areas_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_areas_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_areas_create_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_areas_destroy_url
    assert_response :success
  end

end
