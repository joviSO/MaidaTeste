require "test_helper"

class VariationWeightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @variation_weight = variation_weights(:one)
  end

  test "should get index" do
    get variation_weights_url
    assert_response :success
  end

  test "should get new" do
    get new_variation_weight_url
    assert_response :success
  end

  test "should create variation_weight" do
    assert_difference('VariationWeight.count') do
      post variation_weights_url, params: { variation_weight: { date: @variation_weight.date, weight: @variation_weight.weight } }
    end

    assert_redirected_to variation_weight_url(VariationWeight.last)
  end

  test "should show variation_weight" do
    get variation_weight_url(@variation_weight)
    assert_response :success
  end

  test "should get edit" do
    get edit_variation_weight_url(@variation_weight)
    assert_response :success
  end

  test "should update variation_weight" do
    patch variation_weight_url(@variation_weight), params: { variation_weight: { date: @variation_weight.date, weight: @variation_weight.weight } }
    assert_redirected_to variation_weight_url(@variation_weight)
  end

  test "should destroy variation_weight" do
    assert_difference('VariationWeight.count', -1) do
      delete variation_weight_url(@variation_weight)
    end

    assert_redirected_to variation_weights_url
  end
end
