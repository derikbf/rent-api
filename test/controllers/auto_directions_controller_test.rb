require "test_helper"

class AutoDirectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auto_direction = auto_directions(:one)
  end

  test "should get index" do
    get auto_directions_url, as: :json
    assert_response :success
  end

  test "should create auto_direction" do
    assert_difference('AutoDirection.count') do
      post auto_directions_url, params: { auto_direction: { direction: @auto_direction.direction, rental_company_id: @auto_direction.rental_company_id } }, as: :json
    end

    assert_response 201
  end

  test "should show auto_direction" do
    get auto_direction_url(@auto_direction), as: :json
    assert_response :success
  end

  test "should update auto_direction" do
    patch auto_direction_url(@auto_direction), params: { auto_direction: { direction: @auto_direction.direction, rental_company_id: @auto_direction.rental_company_id } }, as: :json
    assert_response 200
  end

  test "should destroy auto_direction" do
    assert_difference('AutoDirection.count', -1) do
      delete auto_direction_url(@auto_direction), as: :json
    end

    assert_response 204
  end
end
