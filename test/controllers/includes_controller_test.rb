require "test_helper"

class IncludesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @include = includes(:one)
  end

  test "should get index" do
    get includes_url
    assert_response :success
  end

  test "should get new" do
    get new_include_url
    assert_response :success
  end

  test "should create include" do
    assert_difference("Include.count") do
      post includes_url, params: { include: { card_id: @include.card_id, pack_id: @include.pack_id } }
    end

    assert_redirected_to include_url(Include.last)
  end

  test "should show include" do
    get include_url(@include)
    assert_response :success
  end

  test "should get edit" do
    get edit_include_url(@include)
    assert_response :success
  end

  test "should update include" do
    patch include_url(@include), params: { include: { card_id: @include.card_id, pack_id: @include.pack_id } }
    assert_redirected_to include_url(@include)
  end

  test "should destroy include" do
    assert_difference("Include.count", -1) do
      delete include_url(@include)
    end

    assert_redirected_to includes_url
  end
end
