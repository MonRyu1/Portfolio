require 'test_helper'

class Public::ForecastsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_forecasts_index_url
    assert_response :success
  end

  test "should get new" do
    get public_forecasts_new_url
    assert_response :success
  end

  test "should get show" do
    get public_forecasts_show_url
    assert_response :success
  end

  test "should get edit" do
    get public_forecasts_edit_url
    assert_response :success
  end

  test "should get create" do
    get public_forecasts_create_url
    assert_response :success
  end

  test "should get update" do
    get public_forecasts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get public_forecasts_destroy_url
    assert_response :success
  end

end
