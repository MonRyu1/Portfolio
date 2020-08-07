require 'test_helper'

class Admin::ForecastsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_forecasts_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_forecasts_show_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_forecasts_destroy_url
    assert_response :success
  end

end
