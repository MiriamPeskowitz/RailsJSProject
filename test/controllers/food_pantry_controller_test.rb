require 'test_helper'

class FoodPantryControllerTest < ActionDispatch::IntegrationTest
  test "should get _form" do
    get food_pantry__form_url
    assert_response :success
  end

  test "should get edit" do
    get food_pantry_edit_url
    assert_response :success
  end

  test "should get index" do
    get food_pantry_index_url
    assert_response :success
  end

  test "should get new" do
    get food_pantry_new_url
    assert_response :success
  end

  test "should get show" do
    get food_pantry_show_url
    assert_response :success
  end

end
