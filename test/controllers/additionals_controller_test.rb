require "test_helper"

class AdditionalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @additional = additionals(:one)
  end

  test "should get index" do
    get additionals_url
    assert_response :success
  end

  test "should get new" do
    get new_additional_url
    assert_response :success
  end

  test "should create additional" do
    assert_difference('Additional.count') do
      post additionals_url, params: { additional: { color: @additional.color, condition: @additional.condition, imperfections: @additional.imperfections, product_age: @additional.product_age, product_id: @additional.product_id, waranty: @additional.waranty } }
    end

    assert_redirected_to additional_url(Additional.last)
  end

  test "should show additional" do
    get additional_url(@additional)
    assert_response :success
  end

  test "should get edit" do
    get edit_additional_url(@additional)
    assert_response :success
  end

  test "should update additional" do
    patch additional_url(@additional), params: { additional: { color: @additional.color, condition: @additional.condition, imperfections: @additional.imperfections, product_age: @additional.product_age, product_id: @additional.product_id, waranty: @additional.waranty } }
    assert_redirected_to additional_url(@additional)
  end

  test "should destroy additional" do
    assert_difference('Additional.count', -1) do
      delete additional_url(@additional)
    end

    assert_redirected_to additionals_url
  end
end
