require "application_system_test_case"

class MessagegsTest < ApplicationSystemTestCase
  setup do
    @messageg = messagegs(:one)
  end

  test "visiting the index" do
    visit messagegs_url
    assert_selector "h1", text: "Messagegs"
  end

  test "should create messageg" do
    visit messagegs_url
    click_on "New messageg"

    fill_in "Body", with: @messageg.body
    click_on "Create Messageg"

    assert_text "Messageg was successfully created"
    click_on "Back"
  end

  test "should update Messageg" do
    visit messageg_url(@messageg)
    click_on "Edit this messageg", match: :first

    fill_in "Body", with: @messageg.body
    click_on "Update Messageg"

    assert_text "Messageg was successfully updated"
    click_on "Back"
  end

  test "should destroy Messageg" do
    visit messageg_url(@messageg)
    click_on "Destroy this messageg", match: :first

    assert_text "Messageg was successfully destroyed"
  end
end
