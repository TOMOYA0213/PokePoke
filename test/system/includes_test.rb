require "application_system_test_case"

class IncludesTest < ApplicationSystemTestCase
  setup do
    @include = includes(:one)
  end

  test "visiting the index" do
    visit includes_url
    assert_selector "h1", text: "Includes"
  end

  test "should create include" do
    visit includes_url
    click_on "New include"

    fill_in "Card", with: @include.card_id
    fill_in "Pack", with: @include.pack_id
    click_on "Create Include"

    assert_text "Include was successfully created"
    click_on "Back"
  end

  test "should update Include" do
    visit include_url(@include)
    click_on "Edit this include", match: :first

    fill_in "Card", with: @include.card_id
    fill_in "Pack", with: @include.pack_id
    click_on "Update Include"

    assert_text "Include was successfully updated"
    click_on "Back"
  end

  test "should destroy Include" do
    visit include_url(@include)
    click_on "Destroy this include", match: :first

    assert_text "Include was successfully destroyed"
  end
end
