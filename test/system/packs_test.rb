require "application_system_test_case"

class PacksTest < ApplicationSystemTestCase
  setup do
    @pack = packs(:one)
  end

  test "visiting the index" do
    visit packs_url
    assert_selector "h1", text: "Packs"
  end

  test "should create pack" do
    visit packs_url
    click_on "New pack"

    fill_in "Name", with: @pack.name
    click_on "Create Pack"

    assert_text "Pack was successfully created"
    click_on "Back"
  end

  test "should update Pack" do
    visit pack_url(@pack)
    click_on "Edit this pack", match: :first

    fill_in "Name", with: @pack.name
    click_on "Update Pack"

    assert_text "Pack was successfully updated"
    click_on "Back"
  end

  test "should destroy Pack" do
    visit pack_url(@pack)
    click_on "Destroy this pack", match: :first

    assert_text "Pack was successfully destroyed"
  end
end
