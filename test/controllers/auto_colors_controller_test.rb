require "test_helper"

class AutoColorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auto_color = auto_colors(:one)
  end

  test "should get index" do
    get auto_colors_url, as: :json
    assert_response :success
  end

  test "should create auto_color" do
    assert_difference('AutoColor.count') do
      post auto_colors_url, params: { auto_color: { name: @auto_color.name, rental_company_id: @auto_color.rental_company_id } }, as: :json
    end

    assert_response 201
  end

  test "should show auto_color" do
    get auto_color_url(@auto_color), as: :json
    assert_response :success
  end

  test "should update auto_color" do
    patch auto_color_url(@auto_color), params: { auto_color: { name: @auto_color.name, rental_company_id: @auto_color.rental_company_id } }, as: :json
    assert_response 200
  end

  test "should destroy auto_color" do
    assert_difference('AutoColor.count', -1) do
      delete auto_color_url(@auto_color), as: :json
    end

    assert_response 204
  end
end
