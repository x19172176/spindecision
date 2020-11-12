require "application_system_test_case"

class OptionsTest < ApplicationSystemTestCase
  setup do
    @option = options(:one)
  end

  test "visiting the index" do
    visit options_url
    assert_selector "h1", text: "Options"
  end

  test "creating a Option" do
    visit options_url
    click_on "New Option"

    fill_in "Name", with: @option.name
    fill_in "Name1", with: @option.name1
    fill_in "Name2", with: @option.name2
    fill_in "Name3", with: @option.name3
    fill_in "Name4", with: @option.name4
    fill_in "Name5", with: @option.name5
    fill_in "Name6", with: @option.name6
    fill_in "Name7", with: @option.name7
    click_on "Create Option"

    assert_text "Option was successfully created"
    click_on "Back"
  end

  test "updating a Option" do
    visit options_url
    click_on "Edit", match: :first

    fill_in "Name", with: @option.name
    fill_in "Name1", with: @option.name1
    fill_in "Name2", with: @option.name2
    fill_in "Name3", with: @option.name3
    fill_in "Name4", with: @option.name4
    fill_in "Name5", with: @option.name5
    fill_in "Name6", with: @option.name6
    fill_in "Name7", with: @option.name7
    click_on "Update Option"

    assert_text "Option was successfully updated"
    click_on "Back"
  end

  test "destroying a Option" do
    visit options_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Option was successfully destroyed"
  end
end
