require "application_system_test_case"

class VariationWeightsTest < ApplicationSystemTestCase
  setup do
    @variation_weight = variation_weights(:one)
  end

  test "visiting the index" do
    visit variation_weights_url
    assert_selector "h1", text: "Variation Weights"
  end

  test "creating a Variation weight" do
    visit variation_weights_url
    click_on "New Variation Weight"

    fill_in "Date", with: @variation_weight.date
    fill_in "Weight", with: @variation_weight.weight
    click_on "Create Variation weight"

    assert_text "Variation weight was successfully created"
    click_on "Back"
  end

  test "updating a Variation weight" do
    visit variation_weights_url
    click_on "Edit", match: :first

    fill_in "Date", with: @variation_weight.date
    fill_in "Weight", with: @variation_weight.weight
    click_on "Update Variation weight"

    assert_text "Variation weight was successfully updated"
    click_on "Back"
  end

  test "destroying a Variation weight" do
    visit variation_weights_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Variation weight was successfully destroyed"
  end
end
