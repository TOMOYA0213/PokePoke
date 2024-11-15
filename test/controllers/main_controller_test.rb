require "test_helper"

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get main_search_url
    assert_response :success
  end

  test "should get results" do
    get main_results_url
    assert_response :success
  end
end
