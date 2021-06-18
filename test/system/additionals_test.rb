require "application_system_test_case"

class AdditionalsTest < ApplicationSystemTestCase
  setup do
    @additional = additionals(:one)
  end

  test "visiting the index" do
    visit additionals_url
    assert_selector "h1", text: "Additionals"
  end

  test "creating a Additional" do
    visit additionals_url
    click_on "New Additional"

    fill_in "Color", with: @additional.color
    fill_in "Condition", with: @additional.condition
    fill_in "Imperfections", with: @additional.imperfections
    fill_in "Product age", with: @additional.product_age
    fill_in "Product", with: @additional.product_id
    fill_in "Waranty", with: @additional.waranty
    click_on "Create Additional"

    assert_text "Additional was successfully created"
    click_on "Back"
  end

  test "updating a Additional" do
    visit additionals_url
    click_on "Edit", match: :first

    fill_in "Color", with: @additional.color
    fill_in "Condition", with: @additional.condition
    fill_in "Imperfections", with: @additional.imperfections
    fill_in "Product age", with: @additional.product_age
    fill_in "Product", with: @additional.product_id
    fill_in "Waranty", with: @additional.waranty
    click_on "Update Additional"

    assert_text "Additional was successfully updated"
    click_on "Back"
  end

  test "destroying a Additional" do
    visit additionals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Additional was successfully destroyed"
  end
end
