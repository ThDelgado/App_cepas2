require "application_system_test_case"

class EnologistsTest < ApplicationSystemTestCase
  setup do
    @enologist = enologists(:one)
  end

  test "visiting the index" do
    visit enologists_url
    assert_selector "h1", text: "Enologists"
  end

  test "should create enologist" do
    visit enologists_url
    click_on "New enologist"

    fill_in "Age", with: @enologist.age
    fill_in "Company", with: @enologist.company
    fill_in "Nationality", with: @enologist.nationality
    fill_in "Type", with: @enologist.type
    fill_in "User", with: @enologist.user_id
    click_on "Create Enologist"

    assert_text "Enologist was successfully created"
    click_on "Back"
  end

  test "should update Enologist" do
    visit enologist_url(@enologist)
    click_on "Edit this enologist", match: :first

    fill_in "Age", with: @enologist.age
    fill_in "Company", with: @enologist.company
    fill_in "Nationality", with: @enologist.nationality
    fill_in "Type", with: @enologist.type
    fill_in "User", with: @enologist.user_id
    click_on "Update Enologist"

    assert_text "Enologist was successfully updated"
    click_on "Back"
  end

  test "should destroy Enologist" do
    visit enologist_url(@enologist)
    click_on "Destroy this enologist", match: :first

    assert_text "Enologist was successfully destroyed"
  end
end
